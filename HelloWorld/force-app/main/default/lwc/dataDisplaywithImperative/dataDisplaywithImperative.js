import { LightningElement,track } from 'lwc';
import getAccounts from '@salesforce/apex/AccountController.getAccountsRecordsList';
export default class DataDisplaywithImperative extends LightningElement {
    @track accountRecords;
    @track errors;
    @track columns=[
        {label:'Account Names', type:'text',fieldName: 'Name'},
        {label:'Industry',type:'text',fieldName:'Industry'},
        {label: 'SFDC Id',type:'text',fieldName: 'Id'}
    ];
    connectedCallback(){
        getAccounts()
            .then(result=>{
                 this.accountRecords = result;
                })
            .catch(error=>{
                this.errors=error;
            })
    }
}