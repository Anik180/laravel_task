<?php

namespace App\Http\Controllers;

use App\Models\Product;
use Illuminate\Http\Request;
use App\Events\ProductPurchased;

class PurchaseController extends Controller
{
    public function productsPurchase(Request $request, $productId)
    {
    
        $product = Product::find($productId);
        event(new ProductPurchased($product, $request->input('quantity')));
        
        session()->flash('status', 'Product purchased successfully.');

        return redirect()->route('home');
        
    
     
    }
    
}
