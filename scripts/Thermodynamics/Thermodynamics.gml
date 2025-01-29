function Thermodynamics(){
if (self.heat != other.heat) {
if (self.heat > other.heat) {
diff = self.heat - other.heat;
self.heat -= diff / 10;
other.heat += diff / 10;
} else {
diff = self.heat - other.heat;
self.heat += diff / 10;
other.heat -= diff / 10;
}
}
}