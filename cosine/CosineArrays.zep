namespace Similarities\Cosine;
use Similarities\Similarity;

class CosineArrays extends Similarity {

    public function __construct(array data1, array data2) {
        let this->data1 = data1;
        let this->data2 = data2;
    }

    protected function dotProduct() -> double {
        double dotProduct = 0.0;
        var i;
        if(count(this->data1) == count(this->data2)) {
            for i in range(0, (count(this->data1) - 1)) {
                let dotProduct += this->data1[i] * this->data2[i];
            }
        }
        return dotProduct;
    }

    protected function euclideanNorm(array stringIn) -> double {
        double sum = 0.0;
        var stringEntry;
        for stringEntry in stringIn {
            let sum += stringEntry * stringEntry;
        }
        return sqrt(sum);
    }

    public function get() -> double {
        var dotProduct, euclideanNorm1, euclideanNorm2;
        let dotProduct = this->dotProduct();
        let euclideanNorm1 = this->euclideanNorm(this->data1);
        let euclideanNorm2 = this->euclideanNorm(this->data2);
        return dotProduct / (euclideanNorm1 * euclideanNorm2);
    }

}