package com.phamthuong.paging;

import com.phamthuong.sort.Sorter;

public interface Pageble {
	public Integer getPage();
	public Integer getOffset();
	public Integer getLimit();
	public Sorter getSorter();
}
