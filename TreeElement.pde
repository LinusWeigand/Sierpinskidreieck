public abstract class TreeElement{
    abstract TreeElement addLayer();
    abstract void draw();
    abstract TreeElement removeLayer(int iteration);
}