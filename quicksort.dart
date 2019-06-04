void Swap (pos_a, pos_b){
  
  String logging = arr[pos_a].toString() + ' and ' + arr[pos_b].toString();
  print(logging);
  
  var temp = arr[pos_a];
  arr[pos_a] = arr[pos_b];
  arr[pos_b] = temp;
}

int Partition(List arr,int low,int high){
  
  int i = low - 1;
  var pivot = arr[high];
 	
  for(int j=low ;j<=high-1;j++){
    if (arr[j] <= pivot){
      i++;
      Swap(i,j);
    }
  }
  
  Swap(i+1,high);
  print(arr);
  return i+1;
 
}

void SortingFunction(List arr,int low,int high){
  
  if(low < high){
    
    var dividing_index= Partition(arr,low,high);
        
    SortingFunction(arr,low,dividing_index-1);
    SortingFunction(arr,dividing_index+1,high);
		
  }
}

List <int> arr = [10, 80, 30, 90, 40, 50, 70];
void main() {

  int n = arr.length;
  
  //last element as pivot.
  SortingFunction(arr,0,n-1);
  
  print('Sorted List:');
  print(arr);
}
