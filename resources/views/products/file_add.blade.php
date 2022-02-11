<x-app-layout>
    <x-slot name="header">
      
      
    </x-slot>
   

    <div class="py-12">
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
           <div style="margin-top:100px;background-color:lightblue;width:400px;margin-left:350px;" class=" overflow-hidden shadow-xl sm:rounded-lg">
               <div class="p-2">

                <form action="/process" enctype="multipart/form-data" method="POST">
                    @csrf
                    <input type="hidden" value="{{$id}}" name="id">
                    <p>
                        <label for="datoteka">
                            <input type="file" name="datoteka" id="datoteka">
                        <label>
                    </p>
                    <button style="background-color:green;" class="ml-4 inline-flex items-center px-4 py-2  border border-transparent rounded-md
                    font-semibold text-xs text-white uppercase float-right m-2">Potvrdi 
                    </button>
                </form>
</div>
</div>
</div>
</div>
                    


</x-app-layout>
