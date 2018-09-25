xml.instruct!
xml.tag! "soap:Envelope", "xmlns:soap" => 'http://schemas.xmlsoap.org/soap/envelope/',
                          "xmlns:xsi" => 'http://www.w3.org/2001/XMLSchema-instance',
                          "xmlns:xsd" => 'http://www.w3.org/2001/XMLSchema' do
  xml.tag! "soap:Body" do
    xml.tag! "soap:Fault", :encodingStyle => 'http://schemas.xmlsoap.org/soap/encoding/' do
      xml.faultcode error_code, 'xsi:type' => 'xsd:QName'
      xml.faultstring error_message, 'xsi:type' => 'xsd:string'
    end
  end
end
