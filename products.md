---
layout: page
title: Products
permalink: /products/
---
<style>
    .products-cell{
        margin-right:20px;
        padding-right:20px;
        }

    .star-rating{
        --rating: 0;
        --star-size: 20px;
        --star-color: #d4d4d4;
        --star-fill: #f5b301;
        position: relative;
        display: inline-block;
        font-size: var(--star-size);
        line-height: 1;
        letter-spacing: 2px;
    }

    .star-rating::before{
        content: "★★★★★";
        color: var(--star-color);
    }

    .star-rating::after{
        content: "★★★★★";
        color: var(--star-fill);
        position: absolute;
        left: 0;
        top: 0;
        width: calc((var(--rating) / 5) * 100%);
        overflow: hidden;
        white-space: nowrap;
    }

    .rating-label{
        display: block;
        margin-top: 4px;
        font-size: 12px;
        color: #666;
        letter-spacing: normal;
    }
</style>

# Our products 
Our products are Azure DevOps extensions, and our distribution channel is the [Azure DevOps Marketplace](https://marketplace.visualstudio.com). There you can read more about the different extensions and find licensing and pricing information.

<div class="products-table" style="display: table; width: 100%; border-collapse: separate; border-spacing: 0 20px;">
	<div class="products-row" style="display: table-row;">
		<div class="products-cell" style="display: table-cell; vertical-align: top; width: 120px;text-align: center;">
			<img class="extension-logo" src="../img/EnhancedExportPRO-logo.png" />
		</div>
		<div class="products-cell" style="display: table-cell; vertical-align: top;">
			<h3>Enhanced Export PRO </h3>
			Report on work item queries and test plans using customizable templates. Export the report to your standard word document template. Add visual effects at runtime.
			<div class="getExtension"><a  href="https://marketplace.visualstudio.com/items?itemName=mskold.mskold-PRO-EnhancedExport">Read more and <b>start a free 30 day trieal</b>at the Azure DevOps Marketplace...</a></div>
		</div>
		<div class="license-cell" style="display: table-cell; vertical-align: top;">
			<b>Paid<br /> Free 30 day trial </b><br />			
		</div>
		<div class="review-cell" style="display: table-cell; vertical-align: top;">
			<span class="star-rating" style="--rating: 4.5;" aria-label="4.5 out of 5"></span>
			<span class="rating-label">4.5 out of 5</span>
		</div>
	</div>
	<div class="products-row" style="display: table-row;">
		<div class="products-cell" style="display: table-cell; vertical-align: top; width: 120px;text-align: center;">
			<img class="extension-logo" src="../img/QueryTilePRO-logo.png"  width=96 />
		</div>
		<div class="products-cell" style="display: table-cell; vertical-align: top;">
			<h3>Query Tile PRO </h3>
			An advanced query tile with support for all queries and more options to show the information you need.
			<div class="getExtension"><a href="https://marketplace.visualstudio.com/items?itemName=mskold.mskold-Query-Tile-PRO">Read more and <b>get it free</b> at the Azure DevOps Marketplace</a></div>
		</div>
		<div class="license-cell" style="display: table-cell; vertical-align: top;">
			<b>Freemium<br />Free 30 day trial for paid features</b><br />
			Free to use basic features, premium featers requires a subscription.
		</div>
		<div class="review-cell" style="display: table-cell; vertical-align: top;">
			<span class="star-rating" style="--rating: 4.2;" aria-label="4.2 out of 5"></span>
			<span class="rating-label">4.2 out of 5</span>
		</div>
	</div>
	<div class="products-row" style="display: table-row;">
		<div class="products-cell" style="display: table-cell; vertical-align: top; width: 120px;text-align: center;">
			<img class="extension-logo" src="../img/EnhancedExportFree-logo.png" />
		</div>
		<div class="products-cell" style="display: table-cell; vertical-align: top;">
			<h3>Enhanced Export</h3>
			Export Work Item Queries and Test Plans to Word using customizable templates, directly from the web, without client installs or moving template files between computers.
			<div class="getExtension"><a href="https://marketplace.visualstudio.com/items?itemName=mskold.mskold-enhanced-export" >Get it Free</a></div>
		</div>
		<div class="license-cell" style="display: table-cell; vertical-align: top;">
			<b>Free to use</b><br />
			Free to use does not include free support, we provide best effort community support for our free extensions.
		</div>
		<div class="review-cell" style="display: table-cell; vertical-align: top;">
			<span class="star-rating" style="--rating: 3.8;" aria-label="3.8 out of 5"></span>
			<span class="rating-label">3.8 out of 5</span>
		</div>
	</div>
</div>

# Purchasing our products 
By default, purchases are made online from within the extension through our self-service flow, where you sign up for a subscription and pay by credit card.

For larger purchases above 1000 Euros, we can offer additional purchasing options:
## PO/Invoicing/Bank transfer payments
If you want to make a purchase above 1000 Euros and don't want to use our self-service purchase, please reach out to [sales@mskold.com](mailto://sales@mskold.com)

## Purchasing through 3rd party resellers 
We also work with 3rd-party licensing partners and resellers such as SoftwareOne, SHI, QBS, ABDistribution, Insights, Ebusiness-design, and many others.
We are also open to working with your preferred partner to deliver through them.

To make a purchase through a 3rd party reseller, please reach out to your reseller contact.
