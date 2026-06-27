require "open3"
require "pathname"
require "time"

module Jekyll
  # Populates page/document last_modified_at from git commit timestamps.
  class GitLastModifiedGenerator < Generator
    safe true
    priority :low

    def generate(site)
      return unless git_repo?(site.source)

      all_items(site).each do |item|
        next if item.data.key?("last_modified_at")

        relative_path = source_relative_path(site, item)
        next unless relative_path

        last_modified = git_last_commit_timestamp(site.source, relative_path)
        next unless last_modified

        item.data["last_modified_at"] = last_modified
      end
    end

    private

    def all_items(site)
      documents = site.collections.values.flat_map(&:docs)
      (site.pages + documents).uniq
    end

    def source_relative_path(site, item)
      # Jekyll pages/documents expose enough path metadata to build a canonical source path.
      if item.respond_to?(:path) && item.path
        expanded = File.expand_path(item.path, site.source)
        return relative_if_file(site.source, expanded)
      end

      if item.respond_to?(:dir) && item.respond_to?(:name) && item.dir && item.name
        expanded = File.expand_path(File.join(item.dir, item.name), site.source)
        return relative_if_file(site.source, expanded)
      end

      if item.respond_to?(:relative_path) && item.relative_path
        expanded = File.expand_path(item.relative_path, site.source)
        return relative_if_file(site.source, expanded)
      end

      nil
    rescue StandardError
      nil
    end

    def relative_if_file(source, absolute_path)
      return nil unless File.file?(absolute_path)

      Pathname.new(absolute_path).relative_path_from(Pathname.new(source)).to_s
    rescue StandardError
      nil
    end

    def git_repo?(source)
      _stdout, status = Open3.capture2("git", "-C", source, "rev-parse", "--is-inside-work-tree")
      status.success?
    end

    def git_last_commit_timestamp(source, relative_path)
      stdout, status = Open3.capture2(
        "git",
        "-C",
        source,
        "log",
        "-1",
        "--format=%cI",
        "--follow",
        "--",
        relative_path
      )
      return nil unless status.success?

      timestamp = stdout.strip
      return nil if timestamp.empty?

      Time.parse(timestamp).utc.iso8601
    rescue StandardError
      nil
    end
  end
end
