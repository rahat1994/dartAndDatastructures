int partition(List arr,int low,int high){
  
  int i = low - 1;
  var pivot = arr[high];
  
  
}

void quickSort(List arr,int low,int high){
  
  if(low < high){
    
    var pi = partition(arr,low,high);
    
    quickSort(arr,low,pi-1);
    quickSort(arr,pi+1,high);

  }
}

void main() {
 	List <int> arr = [10, 7, 8, 9, 1, 5];
  
  int n = arr.length;
  
  quickSort(arr,0,n-1);
}
