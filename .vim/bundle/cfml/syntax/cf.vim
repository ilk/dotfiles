" Vim syntax file

" Language:      ColdFusion <http://livedocs.macromedia.com/coldfusion/7/>

" Maintainer:    Steven N. Severinghaus <sns@severinghaus.org>

" Last Modified: 2007-02-23

" Version:       0.1.3

"

" Based on the original version by Jeff Lanzarotta, expanded to include

" new tags, attributes, and functions in CFMX and beyond.



" Quit if syntax file is already loaded

if version < 600

  syntax clear

elseif exists("b:current_syntax")

  finish

endif



" Inherit syntax rules from the standard HTML syntax file

if version < 600

  source <sfile>:p:h/html.vim

else

  runtime! syntax/html.vim

endif



" Tags

syn keyword cfTagName contained cfabort cfapplet cfapplication cfargument cfassociate

syn keyword cfTagName contained cfbreak cfcache cfcalendar cfcase cfcatch

syn keyword cfTagName contained cfchart cfchartdata cfchartseries cfcol cfcollection

syn keyword cfTagName contained cfcomponent cfcontent cfcookie cfdefaultcase cfdirectory

syn keyword cfTagName contained cfdocument cfdocumentitem cfdocumentsection cfdump cfelse

syn keyword cfTagName contained cfelseif cferror cfexecute cfexit cffile cfflush cfform

syn keyword cfTagName contained cfformgroup cfformitem cfftp cffunction cfgraph cfgraphdata

syn keyword cfTagName contained cfgrid cfgridcolumn cfgridrow cfgridupdate cfheader

syn keyword cfTagName contained cfhtmlhead cfhttp cfhttpparam cfif cfimport

syn keyword cfTagName contained cfinclude cfindex cfinput cfinsert cfinvoke cfinvokeargument

syn keyword cfTagName contained cfldap cflocation cflock cflog cflogin cfloginuser cflogout

syn keyword cfTagName contained cfloop cfmail cfmailparam cfmailpart cfmodule

syn keyword cfTagName contained cfNTauthenticate cfobject cfobjectcache cfoutput cfparam

syn keyword cfTagName contained cfpop cfprocessingdirective cfprocparam cfprocresult

syn keyword cfTagName contained cfproperty cfquery cfqueryparam cfregistry cfreport

syn keyword cfTagName contained cfreportparam cfrethrow cfreturn cfsavecontent cfschedule

syn keyword cfTagName contained cfscript cfsearch cfselect cfservlet cfservletparam cfset

syn keyword cfTagName contained cfsetting cfsilent cfslider cfstoredproc cfswitch cftable

syn keyword cfTagName contained cftextarea cftextinput cfthrow cftimer cftrace cftransaction

syn keyword cfTagName contained cftree cftreeitem cftry cfupdate cfwddx cfxml



" Tag attributes

syn keyword cfArg contained abort accept access accessible action addnewline addtoken

syn keyword cfArg contained agentname align appendkey appletsource application

syn keyword cfArg contained applicationtimeout applicationtoken archive

syn keyword cfArg contained argumentcollection arguments asciiextensionlist

syn keyword cfArg contained attachmentpath attributecollection attributes autowidth

syn keyword cfArg contained backgroundvisible basetag bcc bgcolor bind bindingname

syn keyword cfArg contained blockfactor body bold border branch cachedafter cachedwithin

syn keyword cfArg contained casesensitive category categorytree cc cfsqltype charset

syn keyword cfArg contained chartheight chartwidth checked class clientmanagement

syn keyword cfArg contained clientstorage codebase colheaderalign colheaderbold

syn keyword cfArg contained colheaderfont colheaderfontsize colheaderitalic colheaders

syn keyword cfArg contained colheadertextcolor collection colorlist colspacing columns

syn keyword cfArg contained completepath component condition connection contentid

syn keyword cfArg contained context contextbytes contexthighlightbegin

syn keyword cfArg contained contexthighlightend contextpassages cookiedomain criteria

syn keyword cfArg contained custom1 custom2 custom3 custom4 data dataalign

syn keyword cfArg contained databackgroundcolor datacollection datasource daynames

syn keyword cfArg contained dbname dbserver dbtype dbvarname debug default delete

syn keyword cfArg contained deletebutton deletefile delimiter delimiters description

syn keyword cfArg contained destination detail directory disabled display displayname

syn keyword cfArg contained disposition dn domain editable enablecab enablecfoutputonly

syn keyword cfArg contained enabled encoded encryption enctype enddate endrange endtime

syn keyword cfArg contained entry errorcode exception existing expand expires expireurl

syn keyword cfArg contained expression extendedinfo extends extensions external

syn keyword cfArg contained failifexists failto file filefield filename filter

syn keyword cfArg contained firstdayofweek firstrowasheaders fixnewline font fontbold

syn keyword cfArg contained fontembed fontitalic fontsize foregroundcolor format

syn keyword cfArg contained formfields formula from generateuniquefilenames getasbinary

syn keyword cfArg contained grid griddataalign gridlines groovecolor group

syn keyword cfArg contained groupcasesensitive header headeralign headerbold headerfont

syn keyword cfArg contained headerfontsize headeritalic headerlines headertextcolor

syn keyword cfArg contained height highlighthref hint href hrefkey hscroll hspace html

syn keyword cfArg contained htmltable id idletimeout img imgopen imgstyle index inline

syn keyword cfArg contained input insert insertbutton interval isolation italic item

syn keyword cfArg contained itemcolumn key keyonly label labelformat language list

syn keyword cfArg contained listgroups locale localfile log loginstorage lookandfeel

syn keyword cfArg contained mailerid mailto marginbottom marginleft marginright

syn keyword cfArg contained margintop markersize markerstyle mask max maxlength maxrows

syn keyword cfArg contained message messagenumber method mimeattach mimetype min mode

syn keyword cfArg contained modifytype monthnames multipart multiple name nameconflict

syn keyword cfArg contained namespace new newdirectory notsupported null numberformat

syn keyword cfArg contained object omit onblur onchange onclick onerror onfocus

syn keyword cfArg contained onkeydown onkeyup onload onmousedown onmouseup onreset

syn keyword cfArg contained onsubmit onvalidate operation orderby orientation output

syn keyword cfArg contained outputfile overwrite ownerpassword pageencoding pageheight

syn keyword cfArg contained pagetype pagewidth paintstyle param_1 param_2 param_3

syn keyword cfArg contained param_4 param_5 param_6 param_7 param_8 param_9 parent

syn keyword cfArg contained parrent passive passthrough password path pattern

syn keyword cfArg contained permissions picturebar pieslicestyle port porttypename

syn keyword cfArg contained prefix preloader preservedata previouscriteria procedure

syn keyword cfArg contained protocol provider providerdsn proxybypass proxypassword

syn keyword cfArg contained proxyport proxyserver proxyuser publish query queryasroot

syn keyword cfArg contained queryposition range rebind recurse redirect referral

syn keyword cfArg contained refreshlabel remotefile replyto report requesttimeout

syn keyword cfArg contained required reset resoleurl resolveurl result resultset

syn keyword cfArg contained retrycount returnasbinary returncode returntype

syn keyword cfArg contained returnvariable roles rotated rowheaderalign rowheaderbold

syn keyword cfArg contained rowheaderfont rowheaderfontsize rowheaderitalic rowheaders

syn keyword cfArg contained rowheadertextcolor rowheaderwidth rowheight scale scalefrom

syn keyword cfArg contained scaleto scope scriptprotect scriptsrc secure securitycontext

syn keyword cfArg contained select selectcolor selected selecteddate selectedindex

syn keyword cfArg contained selectmode separator seriescolor serieslabel seriesplacement

syn keyword cfArg contained server serviceport serviceportname sessionmanagement

syn keyword cfArg contained sessiontimeout setclientcookies setcookie setdomaincookies

syn keyword cfArg contained show3d showborder showdebugoutput showerror showlegend

syn keyword cfArg contained showmarkers showxgridlines showygridlines size skin sort

syn keyword cfArg contained sortascendingbutton sortcontrol sortdescendingbutton

syn keyword cfArg contained sortxaxis source spoolenable sql src srcfile start startdate

syn keyword cfArg contained startrange startrow starttime status statuscode statustext

syn keyword cfArg contained step stoponerror style subject suggestions

syn keyword cfArg contained suppresswhitespace tablename tableowner tablequalifier

syn keyword cfArg contained taglib target task template text textcolor textqualifier

syn keyword cfArg contained throwonerror throwonerror throwonfailure throwontimeout

syn keyword cfArg contained timeout timespan tipbgcolor tipstyle title to tooltip

syn keyword cfArg contained toplevelvariable transfermode type uid unit url urlpath

syn keyword cfArg contained useragent username userpassword usetimezoneinfo validate

syn keyword cfArg contained validateat value valuecolumn values valuesdelimiter

syn keyword cfArg contained valuesdisplay var variable vertical visible vscroll vspace

syn keyword cfArg contained webservice width wmode wraptext wsdlfile xaxistitle

syn keyword cfArg contained xaxistype xoffset yaxistitle yaxistype yoffset



" Functions

syn keyword cfFunctionName contained ACos ASin Abs AddSOAPRequestHeader AddSOAPResponseHeader

syn keyword cfFunctionName contained ArrayAppend ArrayAvg ArrayClear ArrayDeleteAt ArrayInsertAt

syn keyword cfFunctionName contained ArrayIsEmpty ArrayLen ArrayMax ArrayMin ArrayNew

syn keyword cfFunctionName contained ArrayPrepend ArrayResize ArraySet ArraySort ArraySum

syn keyword cfFunctionName contained ArraySwap ArrayToList Asc Atn AuthenticatedContext

syn keyword cfFunctionName contained AuthenticatedUser BinaryDecode BinaryEncode BitAnd

syn keyword cfFunctionName contained BitMaskClear BitMaskRead BitMaskSet BitNot BitOr BitSHLN

syn keyword cfFunctionName contained BitSHRN BitXor CJustify Ceiling CharsetDecode CharsetEncode

syn keyword cfFunctionName contained Chr Compare CompareNoCase Cos CreateDate CreateDateTime

syn keyword cfFunctionName contained CreateODBCDate CreateODBCDateTime CreateODBCTime

syn keyword cfFunctionName contained CreateObject CreateTime CreateTimeSpan CreateUUID DE DateAdd

syn keyword cfFunctionName contained DateCompare DateConvert DateDiff DateFormat DatePart Day

syn keyword cfFunctionName contained DayOfWeek DayOfWeekAsString DayOfYear DaysInMonth DaysInYear

syn keyword cfFunctionName contained DecimalFormat DecrementValue Decrypt DecryptBinary

syn keyword cfFunctionName contained DeleteClientVariable DirectoryExists DollarFormat Duplicate

syn keyword cfFunctionName contained Encrypt EncryptBinary Evaluate Exp ExpandPath FileExists

syn keyword cfFunctionName contained Find FindNoCase FindOneOf FirstDayOfMonth Fix FormatBaseN

syn keyword cfFunctionName contained GenerateSecretKey GetAuthUser GetBaseTagData GetBaseTagList

syn keyword cfFunctionName contained GetBaseTemplatePath GetClientVariablesList GetContextRoot

syn keyword cfFunctionName contained GetCurrentTemplatePath GetDirectoryFromPath GetEncoding

syn keyword cfFunctionName contained GetException GetFileFromPath GetFunctionList

syn keyword cfFunctionName contained GetGatewayHelper GetHttpRequestData GetHttpTimeString

syn keyword cfFunctionName contained GetK2ServerDocCount GetK2ServerDocCountLimit GetLocalHostIP

syn keyword cfFunctionName contained GetLocale GetLocaleDisplayName GetMetaData GetMetricData

syn keyword cfFunctionName contained GetPageContext GetProfileSections GetProfileString

syn keyword cfFunctionName contained GetSOAPRequest GetSOAPRequestHeader GetSOAPResponse

syn keyword cfFunctionName contained GetSOAPResponseHeader GetTempDirectory GetTempFile

syn keyword cfFunctionName contained GetTemplatePath GetTickCount GetTimeZoneInfo GetToken

syn keyword cfFunctionName contained HTMLCodeFormat HTMLEditFormat Hash Hour IIf IncrementValue

syn keyword cfFunctionName contained InputBaseN Insert Int IsArray IsAuthenticated IsAuthorized

syn keyword cfFunctionName contained IsBinary IsBoolean IsCustomFunction IsDate IsDebugMode

syn keyword cfFunctionName contained IsDefined IsK2ServerABroker IsK2ServerDocCountExceeded

syn keyword cfFunctionName contained IsK2ServerOnline IsLeapYear IsLocalHost IsNumeric

syn keyword cfFunctionName contained IsNumericDate IsObject IsProtected IsQuery IsSOAPRequest

syn keyword cfFunctionName contained IsSimpleValue IsStruct IsUserInRole IsValid IsWDDX IsXML

syn keyword cfFunctionName contained IsXmlAttribute IsXmlDoc IsXmlElem IsXmlNode IsXmlRoot

syn keyword cfFunctionName contained JSStringFormat JavaCast LCase LJustify LSCurrencyFormat

syn keyword cfFunctionName contained LSDateFormat LSEuroCurrencyFormat LSIsCurrency LSIsDate

syn keyword cfFunctionName contained LSIsNumeric LSNumberFormat LSParseCurrency LSParseDateTime

syn keyword cfFunctionName contained LSParseEuroCurrency LSParseNumber LSTimeFormat LTrim Left

syn keyword cfFunctionName contained Len ListAppend ListChangeDelims ListContains

syn keyword cfFunctionName contained ListContainsNoCase ListDeleteAt ListFind ListFindNoCase

syn keyword cfFunctionName contained ListFirst ListGetAt ListInsertAt ListLast ListLen

syn keyword cfFunctionName contained ListPrepend ListQualify ListRest ListSetAt ListSort

syn keyword cfFunctionName contained ListToArray ListValueCount ListValueCountNoCase Log Log10

syn keyword cfFunctionName contained Max Mid Min Minute Month MonthAsString Now NumberFormat

syn keyword cfFunctionName contained ParagraphFormat ParameterExists ParseDateTime Pi

syn keyword cfFunctionName contained PreserveSingleQuotes Quarter QueryAddColumn QueryAddRow

syn keyword cfFunctionName contained QueryNew QuerySetCell QuotedValueList REFind REFindNoCase

syn keyword cfFunctionName contained REReplace REReplaceNoCase RJustify RTrim Rand RandRange

syn keyword cfFunctionName contained Randomize ReleaseComObject RemoveChars RepeatString Replace

syn keyword cfFunctionName contained ReplaceList ReplaceNoCase Reverse Right Round Second

syn keyword cfFunctionName contained SendGatewayMessage SetEncoding SetLocale SetProfileString

syn keyword cfFunctionName contained SetVariable Sgn Sin SpanExcluding SpanIncluding Sqr StripCR

syn keyword cfFunctionName contained StructAppend StructClear StructCopy StructCount StructDelete

syn keyword cfFunctionName contained StructFind StructFindKey StructFindValue StructGet

syn keyword cfFunctionName contained StructInsert StructIsEmpty StructKeyArray StructKeyExists

syn keyword cfFunctionName contained StructKeyList StructNew StructSort StructUpdate Tan

syn keyword cfFunctionName contained TimeFormat ToBase64 ToBinary ToScript ToString Trim UCase

syn keyword cfFunctionName contained URLDecode URLEncodedFormat URLSessionFormat Val ValueList

syn keyword cfFunctionName contained Week Wrap WriteOutput XmlChildPos XmlElemNew XmlFormat

syn keyword cfFunctionName contained XmlGetNodeType XmlNew XmlParse XmlSearch XmlTransform

syn keyword cfFunctionName contained XmlValidate Year YesNoFormat



syn keyword cfDeprecated contained cfauthenticate cfimpersonate cfgraph cfgraphdata

syn keyword cfDeprecated contained cfservlet cfservletparam cftextinput

syn keyword cfDeprecated contained GetK2ServerDocCount GetK2ServerDocCountLimit GetTemplatePath

syn keyword cfDeprecated contained IsK2ServerABroker IsK2ServerDocCountExceeded IsK2ServerOnline

syn keyword cfDeprecated contained ParameterExists



syn cluster htmlTagNameCluster add=cfTagName

syn cluster htmlArgCluster add=cfArg,cfFunctionName



syn region cfFunctionRegion start='#' end='#' contains=cfFunctionName



command -nargs=+ HiLink hi def link <args>



HiLink	cfTagName	Statement

HiLink	cfArg		Type

HiLink	cfFunctionName	Function

HiLink	cfDeprecated	Error



delcommand HiLink



let b:current_syntax = "cf"



"EOF vim: tw=78:ft=vim:ts=8


