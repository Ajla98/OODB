<x-app-layout>
    <x-slot name="header"> 
       <style>

.BUTTON_XKV {
   background: lightblue;
   background-image: -webkit-linear-gradient(top,lightblue, lightblue);
   background-image: -moz-linear-gradient(top, lightblue, lightblue);
   background-image: -ms-linear-gradient(top, lightblue, lightblue);
   background-image: -o-linear-gradient(top, lightblue, lightblue);
   background-image: -webkit-gradient(to bottom, lightblue,lightblue);
   -webkit-border-radius: 20px;
   -moz-border-radius: 20px;
   border-radius: 20px;
   color: #FFFFFF;
   font-family: Arial;
   font-size: 13px;
   font-weight: 200;
   padding: 4px;
   -webkit-box-shadow: 0 1px 8px 0 #000000;
   -moz-box-shadow: 0 1px 8px 0 #000000;
   box-shadow: 0 1px 8px 0 #000000;
   text-shadow: -22px -17px 13px #FFFFFF;
   border: solid lightblue 1px;
   text-decoration: none;
   display: inline-block;
   cursor: pointer;
   text-align: center;
}

.BUTTON_XKV:hover {
   border: solid lightblue 1px;
   background: lightblue;
   background-image: -webkit-linear-gradient(top, lightblue, lightblue);
   background-image: -moz-linear-gradient(top, lightblue, lightblue);
   background-image: -ms-linear-gradient(top, lightblue, lightblue);
   background-image: -o-linear-gradient(top, lightblue, lightblue);
   background-image: -webkit-gradient(to bottom, lightblue, lightblue);
   -webkit-border-radius: 22px;
   -moz-border-radius: 22px;
   border-radius: 22px;
   text-decoration: none;
}

.BUTTON_XKV1 {
   background: #D9D61D;
   background-image: -webkit-linear-gradient(top, #D9D61D, #CDC32C);
   background-image: -moz-linear-gradient(top, #D9D61D, #CDC32C);
   background-image: -ms-linear-gradient(top, #D9D61D, #CDC32C);
   background-image: -o-linear-gradient(top, #D9D61D, #CDC32C);
   background-image: -webkit-gradient(to bottom, #D9D61D, #CDC32C);
   -webkit-border-radius: 18px;
   -moz-border-radius: 18px;
   border-radius: 18px;
   color: #FFFFFF;
   font-family: Arial;
   font-size: 13px;
   font-weight: 200;
   padding: 4px;
   -webkit-box-shadow: 0 0 10px 0 #CDC10F;
   -moz-box-shadow: 0 0 10px 0 #CDC10F;
   box-shadow: 0 0 10px 0 #CDC10F;
   text-shadow: -22px -17px 13px #FFFFFF;
   border: solid #C8CD2F 1px;
   text-decoration: none;
   display: inline-block;
   cursor: pointer;
   text-align: center;
}

.BUTTON_XKV1:hover {
   background: #C2D01E;
   border: solid #C3BA28 0;
   -webkit-border-radius: 22px;
   -moz-border-radius: 22px;
   border-radius: 22px;
   text-decoration: none;
}


.BUTTON_XKV2 {
   background: #EB2920;
   background-image: -webkit-linear-gradient(top, #EB2920, #CD3B2C);
   background-image: -moz-linear-gradient(top, #EB2920, #CD3B2C);
   background-image: -ms-linear-gradient(top, #EB2920, #CD3B2C);
   background-image: -o-linear-gradient(top, #EB2920, #CD3B2C);
   background-image: -webkit-gradient(to bottom, #EB2920, #CD3B2C);
   -webkit-border-radius: 18px;
   -moz-border-radius: 18px;
   border-radius: 18px;
   color: #FFFFFF;
   font-family: Arial;
   font-size: 13px;
   font-weight: 200;
   padding: 4px;
   -webkit-box-shadow: 0 0 10px 0 #DD380D;
   -moz-box-shadow: 0 0 10px 0 #DD380D;
   box-shadow: 0 0 10px 0 #DD380D;
   text-shadow: -22px -17px 13px #FFFFFF;
   border: solid #DD380D 1px;
   text-decoration: none;
   display: inline-block;
   cursor: pointer;
   text-align: center;
}

.BUTTON_XKV2:hover {
   background: #DD363E;
   border: solid #DD380D 0;
   -webkit-border-radius: 22px;
   -moz-border-radius: 22px;
   border-radius: 22px;
   text-decoration: none;
}

ul{
  border: 5px solid lightblue;
  list-style-type: none;
  padding: 10px 20px;
  text-align:justify;
 }

 #outer
{
    width:100%;
    text-align: center;
}
.inner
{
    display: inline-block;
}


           </style>
   
   

    <div class="py-12">
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
            <a href="\dodaj_proizvod" class="BUTTON_XKV">Dodaj novi proizvod</a><br>

            <h1 style="font-weight:bold;font-size:20px;text-align:center;"> Lista proizvoda </h1>
            
                     <div class="p-2">
                         

                    @foreach($products as $product)
                    
                  
                    <div class="flex-1">
                    <div style="width:500px; margin-left:300px;" class="bg-white overflow-hidden shadow-xl  sm:rounded-lg">
                    
                         

                    <ul>
                    ID: {{$product->id}} </br>    
                    Ime: {{$product->ime}} </br>
                    Godina proizvodnje: {{$product->godina_p}}</br>
                    Stanje: {{$product->stanje}}</br>
                    Cijena: {{$product->cijena}} KM
                    
                    <hr>


                
                    
                   
                  
 
                    <div id="outer">

                    <div class="inner">

                        <form method="POST" action="{{ route('obrisi_proizvod') }}">
                        @csrf
                        <input type="hidden" name="id" value="{{$product->id}}">
                        <div class="p-2">
                        <button class="BUTTON_XKV2">
                        {{('Obriši proizvod')}}
                        </button>

                        </div>
                        </form>
                       
</div>

<div class="inner">


                        <form method="POST" action="{{ route('uredi_proizvod') }}">
                            @csrf
                            <input type="hidden" name="id" value="{{$product->id}}">
                            <div class="p-2">
                                <button class="BUTTON_XKV1">
                                    {{ _('Uredi proizvod') }}
                                </button>

                              

                            </div>

                            



                        </form>

</div>

<div class="inner">
                      

                        
                      
                        <form method="POST" action="{{ route('file_add') }}">
                            @csrf
                            <input type="hidden" name="id" value="{{$product->id}}">
                            <div class="p-2">
                           
                                <button class="BUTTON_XKV">
                                    {{ _('Dodaj datoteku') }}
                                </button>
                            </div>
                        </form>
</div>
                       
</div>

</ul>

</div>


</div>
</br>
                    @endforeach






            </div>
        </div>
    </div>
    </x-slot>
    
</x-app-layout>
