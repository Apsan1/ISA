const companies = [ 
  { name: "ABC", category: "Finance", start: 1981, end: 2004 }, 
  { name: "XYZ", category: "Retail", start: 1991, end: 2012 }, 
  { name: "DGF", category: "Finance", start: 1976, end: 2008 }, 
  { name: "LFT", category: "Retail", start: 1971, end: 1979 }, 
  { name: "MND", category: "Retail", start: 1995, end: 2010 }, 
  { name: "HCK", category: "Technology", start: 1987, end: 2011 }, 
  { name: "BMC", category: "Technology", start: 1989, end: 2009 }, 
  { name: "TIC", category: "Retail", start: 1993, end: 2005 }, 
  { name: "NAC", category: "Technology", start: 1991, end: 2010 }, 
  { name: "ITC", category: "Finance", start: 1998, end: 2016 } 
]; 
let filterRetail = companies.filter((companies)=>{
  if(companies.category == "Retail"){
    return companies.name
  }
}).map((companies) => companies.name)
console.log("The name of retail companies are: ")
for (let i = 0;i< filterRetail.length;i++ ){
  console.log(filterRetail[i])
}

let filter80s = companies.filter((companies)=>{
  if(companies.start < 1990 && companies.start > 1979){
    return companies.name
  }
}).map((companies) => companies.name)
console.log("\nThe name of 80s companies are: ")
for (let i = 0;i< filter80s.length;i++ ){
  console.log(filter80s[i])
}

let moreThan10 = companies.filter((companies)=>{
  if(companies.end-companies.start > 9 ){
    return companies.name
  }
}).map((companies) => companies.name)
console.log("\nThe name of companies which lasted for 10 or more years are: ")
for (let i = 0;i< moreThan10.length;i++ ){
  console.log(moreThan10[i])
}

