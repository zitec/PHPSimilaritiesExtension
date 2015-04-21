namespace Similarities\Jaccard;
use Similarities\Similarity;

class JaccardArrays extends Similarity {

    public function __construct(array data1, array data2) {
        let this->data1 = data1;
        let this->data2 = data2;
    }

    public function get() -> double {
        var intersectionData, unionData;
        let intersectionData = array_unique(array_intersect(this->data1, this->data2));
        let unionData = array_unique(array_merge(this->data1, this->data2));
        return count(intersectionData) / count(unionData);
    }

}