namespace Similarities\Utils;

class TextOperations {

    protected string1;
    protected string2;
    protected charCount1;
    protected charCount2;
    protected wordCount1;
    protected wordCount2;
    protected wordSeparator = ",";

    public function __construct(string string1, string string2) {
        let this->string1 = trim(string1);
        let this->string2 = trim(string2);
    }

    protected function setCharCount() -> void {
        if(empty(this->charCount1)) {
            // extract char frequency
            let this->charCount1 = count_chars(this->string1, 1);
            let this->charCount2 = count_chars(this->string2, 1);
        }
    }

    protected function setWordCount() -> void {
        if(empty(this->wordCount1)) {
            // extract word frequency
            let this->wordCount1 = this->countWords(this->string1);
            let this->wordCount2 = this->countWords(this->string2);
        }
    }

    protected function countWords(string inputString) {
        return array_count_values(explode(this->wordSeparator, inputString));
    }

    public function setWordSeparator(string separator) {
        let this->wordSeparator = separator;
    }

    public function getWordSeparator() -> string {
        return this->wordSeparator;
    }

    public function getCharFrequencies() -> array {
        this->setCharCount();
        array res = [];
        var length1, length2;
        
        let length1 = strlen(this->string1);
        let length2 = strlen(this->string2);
        
        //union the key arrays
        var allChars, oneChar;
        let allChars = array_keys(this->charCount1 + this->charCount2);
        array charFreq1 = [];
        array charFreq2 = [];
        //se genereaza array de output de dimensiuni egale
        for oneChar in allChars {
            array_push(charFreq1, isset(this->charCount1[oneChar]) ? this->charCount1[oneChar] / length1 : 0);
            array_push(charFreq2, isset(this->charCount2[oneChar]) ? this->charCount2[oneChar] / length2 : 0);
        }
        let res = [charFreq1, charFreq2];
        return res;
    }

    public function getCharCount() -> array {
        this->setCharCount();
        array res = [];
        let res = [this->charCount1, this->charCount2];
        return res;
    }
    
    public function getWordCount() {
        this->setWordCount();
        array res = [];
        let res = [this->wordCount1, this->wordCount2];
        return res;
    }
    
    public function getWordFrequencies() -> array {
        this->setWordCount();
        array res = [];
        var length1, length2;

        let length1 = array_sum(this->wordCount1);
        let length2 = array_sum(this->wordCount2);

        //union the key arrays
        var allWords, oneWord;
        let allWords = array_keys(this->wordCount1 + this->wordCount2);
        array wordFreq1 = [];
        array wordFreq2 = [];

        //se genereaza array de output de dimensiuni egale
        for oneWord in allWords {
            array_push(wordFreq1, isset(this->wordCount1[oneWord]) ? this->wordCount1[oneWord] / length1 : 0);
            array_push(wordFreq2, isset(this->wordCount2[oneWord]) ? this->wordCount2[oneWord] / length2 : 0);
        }
        let res = [wordFreq1, wordFreq2];
        return res;
    }
    
    public function getCommonWordsCount() -> int {
        this->setWordCount();
        return count(array_intersect_key(this->wordCount1, this->wordCount2));
    }
    
    public function getMaxCommonWordsCount() -> int {
        this->setWordCount();
        return min(count(this->wordCount1), count(this->wordCount2));
    }

}