<x-app-layout>
    <x-slot name="header">
    <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('UREĐIVANJE PROIZVODA') }}
        </h2>
      
    </x-slot>
   

    <div class="py-12">
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
           <div style="background-color:lightblue;width:500px;margin-left:350px;" class=" overflow-hidden shadow-xl sm:rounded-lg">
               <div class="p-2">

                   
                    @foreach($products as $product)
                   
                        <form method="POST" action="{{ route('update_proizvod') }}">
                            @csrf
                            <input type="hidden" name="id" value="{{ $product->id }}"/>
                            
                            <div>
                <x-jet-label for="ime" value="{{ __('Ime proizvoda') }}" />
                <x-jet-input id="ime" class="block mt-1 w-full" type="string" name="ime" required autofocus  />
            </div>
 

            <div>
                <x-jet-label for="godina_p" value="{{ __('Godina proizvodnje') }}" />
                <x-jet-input id="godina_p" class="block mt-1 w-full" type="date" name="godina_p" required autofocus  />
            </div>

            <div>
                <x-jet-label for="cijena" value="{{ __('Cijena') }}" />
                <x-jet-input id="cijena" class="block mt-1 w-full" type="number" name="cijena" required autofocus  />
            </div>
 
      
            
            <div >
                <x-jet-label for="stanje" value="{{ __('Stanje') }}" />
                <x-jet-input id="stanje" class="block mt-1 w-full" type="text" name="stanje" required autofocus />
            </div>
 
           
            

            <div >
                <x-jet-label for="brend" value="{{ __('Brend') }}" />
                <select id="brend" name="brend" class="form-select block w-full mt-1 border-gray-300 focus:border-indigo-300 focus:ring focus:ring-indigo-200 focus:ring-opacity-50 rounded-md shadow-sm">
                    <option>Odaberi brend </option>
                    @foreach($brands as $brand)
                    <option value="{{ $brand->id}}"
                    @if($product->brend==$brand->id) selected
                    @endif>{{ $brand->ime}}</option>
                    @endforeach
                </select>

            </div>



            <div >
                <x-jet-label for="vrsta" value="{{ __('Vrsta') }}" />
                <select id="vrsta" name="vrsta" class="form-select block w-full mt-1 border-gray-300 focus:border-indigo-300 focus:ring focus:ring-indigo-200 focus:ring-opacity-50 rounded-md shadow-sm">
                    <option>Odaberi vrstu </option>
                    @foreach($types as $type)
                    <option value="{{ $type->id}}"
                    @if($product->vrsta==$type->id) selected
                    @endif>{{ $type->ime}}</option>
                    @endforeach
                </select>

            </div>



            
 
 
            <div class="flex items-center justify-end mt-4">
               
 
               <x-jet-button class="ml-4">
                   {{ __('Spremi') }}
               </x-jet-button>
           </div>
       </form>
    @endforeach
</div>


            </div>
        </div>
    </div>
</x-app-layout>
