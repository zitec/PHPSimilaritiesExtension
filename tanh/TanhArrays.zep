namespace Similarities\Tanh;
use Similarities\Similarity;

class TanhArrays extends Similarity {

    protected commonItems;
    protected maxCommonItems;

    // nu are nevoie de elemente egale
    // array-urile trebuie sa contina chei pentru ca sunt luate in calcul
    public function __construct(array data1, array data2) {
        let this->data1 = data1;
        let this->data2 = data2;
        let this->commonItems = count(array_intersect_key(data1, data2));
        let this->maxCommonItems = min(count(data1), count(data2));
    }

    public function getCommonItems() -> int {
        return this->commonItems;
    }

    public function getMaxCommonItems() -> int {
        return this->maxCommonItems;
    }

    public function get() -> double {
        double sum = 0.0;
        double similarity = 0.0;
        var key1, key2, value1, value2;
        if(this->commonItems > 0) {
            for key1, value1 in this->data1 {
                for key2, value2 in this->data2 {
                    if(key1 == key2) {
                        let sum += pow(value1 - value2, 2);
                    }
                }
            }
            let similarity = 1 - tanh(sqrt(sum/this->commonItems));
        }
        return similarity;
    }

}