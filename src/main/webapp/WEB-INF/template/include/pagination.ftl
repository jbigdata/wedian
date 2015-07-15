[#if totalPages > 1]
<ul class="am-pagination am-pagination-right">
		[#if isFirst]
		 <li>	<span class="firstPage">首页</span></li>
		[#else]
        <li><a class="firstPage" href="[@pattern?replace("{pageNumber}", "${firstPageNumber}")?interpret /]">首页</a></li>
		[/#if]
		[#if hasPrevious]
        <li><a class="previousPage" href="[@pattern?replace("{pageNumber}", "${previousPageNumber}")?interpret /]">上一页</a></li>
		[#else]
        <li>	<span class="previousPage">上一页</span></li>
		[/#if]
		[#list segment as segmentPageNumber]
			[#if segmentPageNumber_index == 0 && segmentPageNumber > firstPageNumber + 1]
                <li>	<span class="pageBreak">...</span></li>
			[/#if]
			[#if segmentPageNumber != pageNumber]
                <li>	<a href="[@pattern?replace("{pageNumber}", "${segmentPageNumber}")?interpret /]">${segmentPageNumber}</a></li>
			[#else]
            <li>	<span class="currentPage">${segmentPageNumber}</span> </li>
			[/#if]
			[#if !segmentPageNumber_has_next && segmentPageNumber < lastPageNumber - 1]
            <li><span class="pageBreak">...</span> </li>
			[/#if]
		[/#list]
		[#if hasNext]
        <li>	<a class="nextPage" href="[@pattern?replace("{pageNumber}", "${nextPageNumber}")?interpret /]">下一页</a></li>
		[#else]
        <li>	<span class="nextPage">下一页</span></li>
		[/#if]
		[#if isLast]
        <li>	<span class="lastPage">末页</span></li>
		[#else]

        <li>	<a class="lastPage" href="[@pattern?replace("{pageNumber}", "${lastPageNumber}")?interpret /]">末页</a></li>
		[/#if]
	</ul>
[/#if]

