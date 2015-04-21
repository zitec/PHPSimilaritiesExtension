namespace Similarities\Cosine;
use Similarities\Similarity;
use Similarities\Utils\TextOperations;

// strategy
class CosineWords extends Similarity {
    
    protected cosineArrays;
    
    public function __construct(string data1, string data2, string separator = " ") {
        var textOperations, wordFrequency;
        let textOperations = new TextOperations(data1, data2);
        textOperations->setWordSeparator(separator);
        let wordFrequency = textOperations->getWordFrequencies();
        let this->cosineArrays = new CosineArrays(wordFrequency[0], wordFrequency[1]);
    }
    
    public function get() {
        return this->cosineArrays->get();
    }
}