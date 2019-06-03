List swap (List arr, pos_a, pos_b){
  
  var temp = arr[pos_a];
  arr[pos_a] = arr[pos_b];
  arr[pos_b] = temp;
  
  return arr;
  
}

int partition(List arr,int low,int high){
  
  int i = low - 1;
  var pivot = arr[high];
 	
  for(int j=low ;j<=high-1;j++){
    if (arr[j] <= pivot){
      i++;
      arr = swap(arr,i,j);
    }
  }
  swap(arr,i+1,high);
  
  return i+1;
 
}

void quickSort(List arr,int low,int high){
  
  if(low < high){
    
    var pi = partition(arr,low,high);
    
    quickSort(arr,low,pi-1);
    quickSort(arr,pi+1,high);
		
  }
}

List <int> arr = [10, 7, 8, 9, 1, 5];
void main() {
//  	List <int> arr = [10, 7, 8, 9, 1, 5];
  
  int n = arr.length;
  
  quickSort(arr,0,n-1);
  
  print('Sorted List:');
  print(arr);
  
  
}
