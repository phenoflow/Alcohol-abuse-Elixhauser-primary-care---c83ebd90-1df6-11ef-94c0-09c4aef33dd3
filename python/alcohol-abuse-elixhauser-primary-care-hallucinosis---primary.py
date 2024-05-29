# David Metcalfe, James Masters, Antonella Delmestri, Andrew Judge, Daniel Perry, Cheryl Zogg, Belinda Gabbe, Matthew Costa, 2024.

import sys, csv, re

codes = [{"code":"E250z00","system":"readv2"},{"code":"E011z00","system":"readv2"},{"code":"E231z00","system":"readv2"},{"code":"E01yz00","system":"readv2"},{"code":"E013.00","system":"readv2"},{"code":"E230z00","system":"readv2"},{"code":"E01z.00","system":"readv2"},{"code":"Eu10511","system":"readv2"},{"code":"E23z.00","system":"readv2"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('alcohol-abuse-elixhauser-primary-care-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["alcohol-abuse-elixhauser-primary-care-hallucinosis---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["alcohol-abuse-elixhauser-primary-care-hallucinosis---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["alcohol-abuse-elixhauser-primary-care-hallucinosis---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
