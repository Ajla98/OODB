<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('DODAVANJE NOVOG PROIZVODA') }}
        </h2>
    </x-slot>
    <div class="py-12">
    <div class="max-w-7yl mx-auto sm:px-6 lg:px-8">
       
        <div style="margin-top:100px;padding:5px;background-color:lightblue;width:500px;margin-left:350px;margin-top:50px;" class="overflow-hidden shadow-xl sm:rounded-lg">
            <div class="p-2">
        <form method="POST" action="{{ route('spremi_proizvod') }}"> 
            @csrf
 
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
 
      
            </div>
            <div>
                <x-jet-label for="stanje" value="{{ __('Stanje') }}" />
                <x-jet-input id="stanje" class="block mt-1 w-full" type="text" name="stanje" required autofocus />
            </div>
 
           
            

            <div>
                <x-jet-label for="brend" value="{{ __('Brend') }}" />
                <x-jet-input id="brend" class="block mt-1 w-full" type="text" name="brend" required autofocus />
            </div>

            <div>
                <x-jet-label for="vrsta" value="{{ __('Vrsta') }}" />
                <x-jet-input id="vrsta" class="block mt-1 w-full" type="text" name="vrsta" required autofocus />
            </div>
 
 
            <div class="flex items-center justify-end mt-4">
               
 
               <x-jet-button class="ml-4">
                   {{ __('Dodaj proizvod') }}
               </x-jet-button>
           </div>
       </form>
     </div>
       </div>
   </div>
</div>
 
</x-app-layout>
 

 