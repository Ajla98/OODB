<x-app-layout>
    <x-slot name="header">
      <style>
        .tr1:hover {background-color: lightblue; font-size: large;}

       
        th {
  background-color: lightblue;
  color: grey;}
  table {
  border-collapse: collapse;
  width: 100%;
  text-align: left;
 border-bottom: 1px solid #ddd;

}
caption{
    background-color: lightblue;
    color: grey;
}

ul{
  border-left: 5px solid lightblue;
  list-style-type: none;
  padding: 10px 20px;
  text-align:justify;
 }

</style>
</x-slot>
      
   
   

    <div class="py-12">
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
            <div style="background-color:lightgray;" class=" overflow-hidden shadow-xl sm:rounded-lg">





          
               <div class="p-2">
              
               <div style="background-color:white;" class="rounded-lg grid grid-cols-4 gap-4 p-4 justify-items-center">


            
               <div>
                   <h1>Poklon BON</h1>
                   <h1 style='color:red;'>*porudžbine preko 3800 KM</h1>
                       <ul>
                  
                       <hr/>
                     
                        <table>
                        <tr>
                        
                        <th>Email kupca </th>
                      
                         </tr>
                       
                               
                        @foreach($super as $supers)
                      
                        <tr class="tr1" style=" border-bottom: 1px solid #ddd;">
                        
                        <?php 
                                print(" 
                                <td>$supers->em</td>
                              ")
                            
                            ?>
                            
                                
                            

                            
                       @endforeach
                    
                                
                        </tr>


                       
                     


                        </table>
                   
              



</ul>
                    </div>



                    <div>
                   <h1>Najzastupljeniji način poštarine</h1>
                       <ul>
                  
                       <hr/>
                     
                        <table>
                       
                        <tr>
                        
                        <th>Naziv </th>
                        <th>Broj</th>
                        <th>Cijena</th>
                         </tr>
                        @foreach($postarina as $postarina1)
                      
                        <tr class="tr1" style=" border-bottom: 1px solid #ddd;">
                        
                           
                            <?php if ($postarina1->brojac>32) 
                                print(" 
                                <td>$postarina1->ime</td>
                                <td>$postarina1->brojac</td>
                                <td>$postarina1->cijena</td>
                                
                             ")
                            
                            ?>
                                
                            

                            
                       @endforeach
                        </tr>


                       
                     


                        </table>
                   
              



</ul>
                    </div>

                    <div style="margin-left:300px;width:500px;">
                   <h1>Podaci o kupcima koji su kupili laptop 2020.g. </h1>
                       <ul>
                  
                       <hr/>
                     
                        <table>
                       
                        <tr>
                        
                        <th>Email</th>
                        <th>Prezime</th>
                        
                        <th>Značka</th>
                         </tr>
                        @foreach($datump as $datump1)
                      
                        <tr class="tr1" style=" border-bottom: 1px solid #ddd;">
                        
                           
                            <?php 
                                print(" 
                               
                                <td>$datump1->email</td>
                                <td>$datump1->prezime</td>
                               
                                <td>$datump1->znacka</td>


                               
                                
                             ")
                            
                            ?>
                                
                            

                            
                       @endforeach
                        </tr>


                       
                     


                        </table>
                   
              



</ul>
                    </div>
               
                 
</div>
</div>




















               <div class="p-2">
              
               <div  style="background-color:white;" class=" rounded-lg grid grid-cols-4 gap-4 p-4 justify-items-center">


            
                   <div >
                   <h1>Najprodavaniji proizvodi</h1>
                       <ul>
                  
                       <hr/>
                     
                        <table>
                       
                        <tr>
                        
                        <th>Naziv </th>
                        <th>Broj</th>
                         </tr>
                        @foreach($najp as $naajp)
                      
                        <tr class="tr1" style=" border-bottom: 1px solid #ddd;">
                        
                           
                            <?php if ($naajp->brojac>2) 
                                print(" 
                                <td>$naajp->ime</td>
                                <td>$naajp->brojac</td>")
                            
                            ?>
                                
                            

                            
                       @endforeach
                        </tr>


                       
                     


                        </table>
                   
              



</ul>
                    </div>





                    <div>
                   <h1>Najtraženije marke</h1>
                       <ul>
                  
                       <hr/>
                     
                        <table>
                       
                        <tr>
                        
                        <th>Naziv </th>
                      
                         </tr>
                        @foreach($najm as $najmarke)
                      
                        <tr class="tr1" style=" border-bottom: 1px solid #ddd;">
                        
                           
                            <?php if ($najmarke->brojac>10) 
                                print(" 
                                <td>$najmarke->ime</td>
                              ")
                            
                            ?>
                                
                            

                            
                       @endforeach
                        </tr>


                       
                     


                        </table>
                   
              



</ul>
                    </div>





                    <div>
                   <h1>Broj polovnih proizvoda na stanju</h1>
                       <ul>
                  
                       <hr/>
                     
                        <table>
                       
         
                         <?php 
                                
                                $ukupno=0;
                             
                            
                            ?>
                               
                        @foreach($pol as $pols)
                      
                        <tr class="tr1" style=" border-bottom: 1px solid #ddd;">
                        
                           
                            <?php 
                                
                                $ukupno=$pols->brojac+$ukupno;
                             
                            
                            ?>
                                
                            

                            
                       @endforeach
                       <?php 
                                print(" 
                                <td>$ukupno</td>
                              ")
                            
                            ?>
                                
                        </tr>


                       
                     


                        </table>
                   
              



</ul>
                    </div>

                  
                   
                    <div>
                   <h1>Broj novih proizvoda na stanju</h1>
                       <ul>
                  
                       <hr/>
                     
                        <table>
                       
                       
                         <?php 
                                
                                $ukupnon=0;
                             
                            
                            ?>
                               
                        @foreach($nov as $novs)
                      
                        <tr class="tr1" style=" border-bottom: 1px solid #ddd;">
                        
                           
                            <?php 
                                
                                $ukupnon=$novs->brojac+$ukupnon;
                             
                            
                            ?>
                                
                            

                            
                       @endforeach
                       <?php 
                                print(" 
                                <td>$ukupnon</td>
                              ")
                            
                            ?>
                                
                        </tr>


                       
                     


                        </table>
                   
              



</ul>
                    </div>












                    
</div>





</div>

















          
               <div class="p-2">
              
               <div style="background-color:white;" class="rounded-lg grid grid-cols-4 gap-4 p-4 justify-items-center">


               <div style="margin-left:220px;width:500px;">
                   <h1>Komponente poslane kupcima sa četiri zvjedice standardnim načinom slanja do 01.09. 2022.g.</h1>
                       <ul>
                  
                       <hr/>
                     
                        <table>
                       
                        <tr>
                        <th>R.br. </th>
                        <th>Naziv </th>
                       
                         </tr>
                        @foreach($Kstand as $standk)
                      
                        <tr class="tr1" style=" border-bottom: 1px solid #ddd;">
                        
                        <?php 
                                print(" 
                                <td>$loop->iteration</td>
                                <td>Komponenta $standk->ime</td>
                              ")
                            
                            ?>
                              
                            
                         
                                
                            

                            
                       @endforeach
                        </tr>
                    </table>
                   
            </ul>
                    </div>





                    <div style="margin-left:700px;width:500px;">
                   <h1>Laptopi poslani kupcima sa četiri zvjedice standardnim načinom slanja do 01.09. 2022.g.
                       skuplji od 2000 KM</h1>
                       <ul>
                  
                       <hr/>
                     
                        <table>
                       
                        <tr>
                        <th>R.br. </th>
                        <th>Naziv </th>
                        <th>Cijena </th>
                       
                         </tr>
                        @foreach($Lstand as $standL)
                      
                        <tr class="tr1" style=" border-bottom: 1px solid #ddd;">
                        
                        <?php 
                                print(" 
                                <td>$loop->iteration</td>
                                <td> Laptop $standL->ime</td>
                                <td> $standL->cijena KM</td>
                              ")
                            
                            ?>
                              
                            
                         
                                
                            

                            
                       @endforeach
                        </tr>
                    </table>
                   
            </ul>
                    </div>




              
                 
</div>
</div>










<div class="p-2">
              
              <div style="background-color:white;" class="rounded-lg grid grid-cols-4 gap-4 p-4 justify-items-center">


              <div style="margin-left:220px;width:500px;">
                  <h1>Kompjuteri poslani ekonomskim načinom slanja<br>
                      Vrijednost >300 KM<br>
                      Period: 2020-2021.g. </h1>
                      <ul>
                 
                      <hr/>
                    
                       <table>
                      
                       <tr>
                       <th>R.br. </th>
                       <th>Naziv </th>
                      
                        </tr>
                       @foreach($kompjuteri as $kom)
                     
                       <tr class="tr1" style=" border-bottom: 1px solid #ddd;">
                       
                       <?php 
                               print(" 
                               <td>$loop->iteration</td>
                               <td>Kompjuter $kom->ime</td>
                             ")
                           
                           ?>
                             
                           
                        
                               
                           

                           
                      @endforeach
                       </tr>
                   </table>
                  
           </ul>
                   </div>








             
                
</div>
</div>













                </div>
            
        </div>
    </div>
   
</x-app-layout>