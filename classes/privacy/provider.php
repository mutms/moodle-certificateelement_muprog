<?php
// Programs fields plugin for Certificate plugin for Moodle™.

namespace certificateelement_muprog\privacy;

/**
 * Privacy Subsystem for certificateelement_muprog implementing null_provider.
 *
 * @package    certificateelement_muprog
 * @copyright  2022 Open LMS (https://www.openlms.net/)
 * @author     Petr Skoda
 * @license    https://www.gnu.org/copyleft/gpl.html GNU GPL v3 or later
 */
class provider implements \core_privacy\local\metadata\null_provider {

    /**
     * Get the language string identifier with the component's language
     * file to explain why this plugin stores no data.
     *
     * @return  string
     */
    public static function get_reason() : string {
        return 'privacy:metadata';
    }
}
