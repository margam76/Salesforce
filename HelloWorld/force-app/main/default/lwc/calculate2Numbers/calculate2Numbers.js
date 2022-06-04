import { LightningElement,track } from 'lwc';
import getSumResult from '@salesforce/apex/CalculateNumbers.getSumResult';
export default class Calculate2Numbers extends LightningElement {
    @track sum;
    @track fnumber;
    @track snumber;
    @track errors;
    handleClick(){
        getSumResult({firstNumber:this.fnumber,secondNumber:this.snumber})
        .then(result=>{
            this.sum = result;
        })
        .catch(error=>{
            this.error=error;
        });
     }
}