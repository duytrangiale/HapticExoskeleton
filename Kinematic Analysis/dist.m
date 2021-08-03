% Ham tinh khoang cach tu diem O den duong thang AB
function d = dist(xO,yO,xA,yA,xB,yB)
    d = (abs((yA - yB)*xO + (xB - xA)*yO + (xA*yB - yA*xB)))/(sqrt((yA - yB)^2 + (xB - xA)^2));
end

