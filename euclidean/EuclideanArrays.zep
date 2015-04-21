namespace Similarities\Euclidean;
use Similarities\Similarity;

class EuclideanArrays extends Similarity {

    public function __construct(array data1, array data2) {
        let this->data1 = data1;
        let this->data2 = data2;
    }

    protected function euclideanDistance() -> double {
        double sum = 0.0;
        var i;
        if(count(this->data1) == count(this->data2)) {
            for i in range(0, (count(this->data1) - 1)) {
                let sum += pow(this->data1[i] - this->data2[i], 2);
            }
            return sqrt(sum);
        }
        else {
            return sum;
        }
    }

    public function get() -> double {
        var euclideanDistance;
        double res;
        let euclideanDistance = this->euclideanDistance();
        let res = 1 + euclideanDistance;
        return 1 / res;
    }

}