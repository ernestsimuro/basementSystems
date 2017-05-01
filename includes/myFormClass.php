<?php
/**
 * Created by PhpStorm.
 * User: ernes
 * Date: 4/29/2017
 * Time: 8:04 PM
 */

class myForm
{

    private $tag;
    private $xhtml;
    private $action;
    private $method;

    function __construct($action = '#', $method = 'post', $xhtml = true)
    {
        $this->action = $action;
        $this->method = $method;
        $this->xhtml = $xhtml;
    }

    function startForm($id = '', $attr_ar = array())
    {
        $str = '<form action="' . $this->action . '" method="' . $this->method . '"';
        if (!empty($id)) {
            $str .= ' id= "' . $id .'"';
        }
        if ($attr_ar) {
            $str .= $this->addAttributes($attr_ar);
        }
        $str .= '>';

        return $str;
    }

    function startTag($tag, $attr_ar = array())
    {
        $this->tag = $tag;
        $str = "<$tag";
        if ($attr_ar) {
            echo 'I am here ';
            $str .= $this->addAttributes($attr_ar);
        }
        $str .= '>';
        return $str;
    }

    // for attribute refers to id of associated form element
    function addLabelFor($forID, $text, $attr_ar = array() ) {
        $str = '<label for="' . $forID . '"';
        if ($attr_ar) {
            $str .= $this->addAttributes( $attr_ar );
        }
        $str .= ">$text</label>";
        return $str;
    }

    function addInput($type, $name, $value, $attr_ar = array() ) {
        $str = '<input type="' . $type . '" name="' .$name . ' " value="' . $value . '"';
        if ($attr_ar) {
            $str .= $this->addAttributes( $attr_ar );
        }
        $str .= $this->xhtml? ' />': '>';
        return $str;
    }

    function endTag($tag = '')
    {
        $str = $tag ? "</$tag>" : "</$this->tag>";
        $this->tag = '';
        return $str;
    }

    function endForm() {
        return "</form>";
    }

    private function addAttributes( $attr_ar ) {
        $str = '';
        // check minimized (boolean) attributes
        $min_atts = array('checked', 'disabled', 'readonly', 'multiple',
            'required', 'autofocus', 'novalidate', 'formnovalidate'); // html5
        foreach( $attr_ar as $key=>$val ) {
            if ( in_array($key, $min_atts) ) {
                if ( !empty($val) ) {
                    $str .= $this->xhtml? " $key=\"$key\"": " $key";
                }
            } else {
                $str .= " $key=\"$val\"";
            }
        }
        return $str;
    }


}