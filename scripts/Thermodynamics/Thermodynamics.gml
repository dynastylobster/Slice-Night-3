function Thermodynamics(){
if (self.heat != other.heat) {
if (self.heat > other.heat) {
diff = self.heat - other.heat;
self.heat -= floor(diff / 200);
other.heat += floor(diff / 200);
}
}
}