<?php

namespace App\Http\Controllers;

use TCG\Voyager\Models\Page;
class PagesController extends Controller
{
	public function getPage($slug = null)
	{
		$page = Page::where('slug', $slug)->where('active', 1);
		$page = $page->firstOrFail();
		
		$page = translateContentRecursive($page);
		return view('page')->with('page', $page);
		
	}
}