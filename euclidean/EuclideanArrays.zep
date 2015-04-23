namespace Similarities\Euclidean;
use Similarities\Similarity;

class EuclideanArrays extends Similarity {

    public function __construct(array data1, array data2) {
        if(count(data1) != count(data2)) {
            throw new \InvalidArgumentException("The input arrays must have the same size");
        }
        let this->data1 = data1;
        let this->data2 = data2;
    }

    protected function euclideanDistance() -> double {
        double sum = 0.0;
        var i;
        for i in range(0, (count(this->data1) - 1)) {
            let sum += pow(this->data1[i] - this->data2[i], 2);
        }
        return sqrt(sum);
    }

    public function get() -> double {
        var euclideanDistance;
        double res;
        let euclideanDistance = this->euclideanDistance();
        let res = 1 + euclideanDistance;
        return 1 / res;
    }

}