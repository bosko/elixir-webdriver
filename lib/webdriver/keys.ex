defmodule WebDriver.Keys do
  @moduledoc """
    This provides symbols to represent various non-printable keystrokes that
    can be sent to a web browser.

    The codes are defined in: https://code.google.com/p/selenium/wiki/JsonWireProtocol#/session/:sessionId/element/:id/value

  """
  @non_text_keys [
    {:key_null, "\ue000"},
    {:key_cancel, "\ue001"},
    {:key_help, "\ue002"},
    {:key_back_space, "\ue003"},
    {:key_tab, "\ue004"},
    {:key_clear, "\ue005"},
    {:key_return, "\ue006"},
    {:key_enter, "\ue007"},
    {:key_shift, "\ue008"},
    {:key_control, "\ue009"},
    {:key_alt, "\ue00a"},
    {:key_pause, "\ue00b"},
    {:key_escape, "\ue00c"},
    {:key_space, "\ue00d"},
    {:key_page_up, "\ue00e"},
    {:key_page_down, "\ue00f"},
    {:key_end, "\ue010"},
    {:key_home, "\ue011"},
    {:key_left, "\ue012"},
    {:key_up, "\ue013"},
    {:key_right, "\ue014"},
    {:key_down, "\ue015"},
    {:key_insert, "\ue016"},
    {:key_delete, "\ue017"},
    {:key_semicolon, "\ue018"},
    {:key_equals, "\ue019"},
    {:key_numpad_0, "\ue01a"},
    {:key_numpad_1, "\ue01b"},
    {:key_numpad_2, "\ue01c"},
    {:key_numpad_3, "\ue01d"},
    {:key_numpad_4, "\ue01e"},
    {:key_numpad_5, "\ue01f"},
    {:key_numpad_6, "\ue020"},
    {:key_numpad_7, "\ue021"},
    {:key_numpad_8, "\ue022"},
    {:key_numpad_9, "\ue023"},
    {:key_multiply, "\ue024"},
    {:key_add, "\ue025"},
    {:key_separator, "\ue026"},
    {:key_subtract, "\ue027"},
    {:key_decimal, "\ue028"},
    {:key_divide, "\ue029"},
    {:key_f1, "\ue031"},
    {:key_f2, "\ue032"},
    {:key_f3, "\ue033"},
    {:key_f4, "\ue034"},
    {:key_f5, "\ue035"},
    {:key_f6, "\ue036"},
    {:key_f7, "\ue037"},
    {:key_f8, "\ue038"},
    {:key_f9, "\ue039"},
    {:key_f10, "\ue03a"},
    {:key_f11, "\ue03b"},
    {:key_f12, "\ue03c"},
    {:key_meta, "\ue03d"}
  ]

  defp val({:ok, value}) do
    value
  end

  defp val(:error) do
    {:error, :invalid_key_code}
  end

  @doc """
  This function is used to return the Unicode codes for simuluation non text key
  presses.

  See: https://code.google.com/p/selenium/wiki/JsonWireProtocol#/session/:sessionId/element/:id/value

  Key codes that are available:

  ```Elixir
    { :key_null,      "\ue000"},
    { :key_cancel,    "\ue001"},
    { :key_help,      "\ue002"},
    { :key_back_space,"\ue003"},
    { :key_tab,       "\ue004"},
    { :key_clear,     "\ue005"},
    { :key_return,    "\ue006"},
    { :key_enter,     "\ue007"},
    { :key_shift,     "\ue008"},
    { :key_control,   "\ue009"},
    { :key_alt,       "\ue00a"},
    { :key_pause,     "\ue00b"},
    { :key_escape,    "\ue00c"},
    { :key_space,     "\ue00d"},
    { :key_page_up,   "\ue00e"},
    { :key_page_down, "\ue00f"},
    { :key_end,       "\ue010"},
    { :key_home,      "\ue011"},
    { :key_left,      "\ue012"},
    { :key_up,        "\ue013"},
    { :key_right,     "\ue014"},
    { :key_down,      "\ue015"},
    { :key_insert,    "\ue016"},
    { :key_delete,    "\ue017"},
    { :key_semicolon, "\ue018"},
    { :key_equals,    "\ue019"},
    { :key_numpad_0,  "\ue01a"},
    { :key_numpad_1,  "\ue01b"},
    { :key_numpad_2,  "\ue01c"},
    { :key_numpad_3,  "\ue01d"},
    { :key_numpad_4,  "\ue01e"},
    { :key_numpad_5,  "\ue01f"},
    { :key_numpad_6,  "\ue020"},
    { :key_numpad_7,  "\ue021"},
    { :key_numpad_8,  "\ue022"},
    { :key_numpad_9,  "\ue023"},
    { :key_multiply,  "\ue024"},
    { :key_add,       "\ue025"},
    { :key_separator, "\ue026"},
    { :key_subtract,  "\ue027"},
    { :key_decimal,   "\ue028"},
    { :key_divide,    "\ue029"},
    { :key_f1,        "\ue031"},
    { :key_f2,        "\ue032"},
    { :key_f3,        "\ue033"},
    { :key_f4,        "\ue034"},
    { :key_f5,        "\ue035"},
    { :key_f6,        "\ue036"},
    { :key_f7,        "\ue037"},
    { :key_f8,        "\ue038"},
    { :key_f9,        "\ue039"},
    { :key_f10,       "\ue03a"},
    { :key_f11,       "\ue03b"},
    { :key_f12,       "\ue03c"},
    { :key_meta,      "\ue03d"}

  ```
  """
  def key(key_code) do
    Keyword.fetch(@non_text_keys, key_code)
    |> val
  end
end
