.class public final Lcn/jiguang/analytics/android/e/g/d;
.super Landroid/webkit/WebChromeClient;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/webkit/WebView;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/webkit/WebChromeClient;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/webkit/WebView;)V
    .locals 2

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcn/jiguang/analytics/android/e/g/d;->a:Ljava/lang/ref/WeakReference;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcn/jiguang/analytics/android/e/g/d;->a:Ljava/lang/ref/WeakReference;

    const v0, -0xffeffc

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/webkit/WebChromeClient;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/webkit/WebChromeClient;

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/webkit/WebChromeClient;

    invoke-direct {v0}, Landroid/webkit/WebChromeClient;-><init>()V

    :goto_0
    iput-object v0, p0, Lcn/jiguang/analytics/android/e/g/d;->b:Landroid/webkit/WebChromeClient;

    invoke-virtual {p1, p0}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    new-instance v0, Lcn/jiguang/analytics/android/e/g/e;

    invoke-direct {v0, p0}, Lcn/jiguang/analytics/android/e/g/e;-><init>(Lcn/jiguang/analytics/android/e/g/d;)V

    const-string v1, "_janalytics_bridge"

    invoke-virtual {p1, v0, v1}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private a()Ljava/lang/String;
    .locals 7

    iget-object v0, p0, Lcn/jiguang/analytics/android/e/g/d;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/jiguang/analytics/android/e/g/d;->c:Ljava/lang/String;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    new-instance v2, Ljava/io/File;

    const-string v3, "/sdcard/test.js"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v2, 0x4b00

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "javascript:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x1000

    new-array v2, v2, [B

    :goto_0
    invoke-virtual {v1, v2}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    if-lez v3, :cond_1

    new-instance v4, Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct {v4, v2, v5, v3}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/jiguang/analytics/android/e/g/d;->c:Ljava/lang/String;

    const-string v0, "JAnalyticsJsHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "jsString:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcn/jiguang/analytics/android/e/g/d;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcn/jiguang/analytics/android/e/g/d;->c:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-object v0, v1

    goto :goto_2

    :catchall_1
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    :goto_1
    if-eqz v1, :cond_2

    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :catch_2
    :cond_2
    throw v0

    :catch_3
    :goto_2
    if-eqz v0, :cond_3

    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :cond_3
    const-string v0, "javascript:function test(){console.log(\"test\");window._janalytics_bridge.saveEvent(\"saveEvent\")}function setWebviewSize(width,height){console.log(\"width:\"+width+\",height:\"+height)}function printlnNode(node){var rect=node.getBoundingClientRect();console.log(\"left:\"+rect.left+\",top:\"+rect.top+\",width:\"+rect.width+\",height:\"+rect.height+\",className:\"+node.className+\",nodeName:\"+node.nodeName+\",tagName:\"+node.tagName+\",nodeType:\"+node.nodeType+\",clientHeight:\"+node.clientHeight+\",clientWidth:\"+node.clientWidth+\",nodeValue:\"+node.nodeValue+\",textContent:\"+node.textContent+\",title:\"+node.title);if(node.hasChildNodes()){var childNodes=node.childNodes;for(var i=childNodes.length-1;i>=0;i--){try{printlnNode(childNodes[i])}catch(error){}}}}function printBodyElem(){printlnNode(document.body)}function initScreen(width,height){var rect=document.body.getBoundingClientRect();window.widthScale=width/window.screen.width;window.heightScale=height/window.screen.height;console.log(\"width:\"+width+\",height:\"+height+\",screen width:\"+window.screen.width+\",screen height:\"+window.screen.height+\",w scale:\"+window.widthScale+\",window.heightScale:\"+window.heightScale);var s=\"\";s+=\" \u7f51\u9875\u53ef\u89c1\u533a\u57df\u5bbd\uff1a\"+document.body.clientWidth;s+=\" \u7f51\u9875\u53ef\u89c1\u533a\u57df\u9ad8\uff1a\"+document.body.clientHeight;s+=\" \u7f51\u9875\u53ef\u89c1\u533a\u57df\u5bbd\uff1a\"+document.body.offsetWidth+\" (\u5305\u62ec\u8fb9\u7ebf\u548c\u6eda\u52a8\u6761\u7684\u5bbd)\";s+=\" \u7f51\u9875\u53ef\u89c1\u533a\u57df\u9ad8\uff1a\"+document.body.offsetHeight+\" (\u5305\u62ec\u8fb9\u7ebf\u7684\u5bbd)\";s+=\" \u7f51\u9875\u6b63\u6587\u5168\u6587\u5bbd\uff1a\"+document.body.scrollWidth;s+=\" \u7f51\u9875\u6b63\u6587\u5168\u6587\u9ad8\uff1a\"+document.body.scrollHeight;s+=\" \u7f51\u9875\u88ab\u5377\u53bb\u7684\u9ad8(ff)\uff1a\"+document.body.scrollTop;s+=\" \u7f51\u9875\u88ab\u5377\u53bb\u7684\u9ad8(ie)\uff1a\"+document.documentElement.scrollTop;s+=\" \u7f51\u9875\u88ab\u5377\u53bb\u7684\u5de6\uff1a\"+document.body.scrollLeft;s+=\" \u7f51\u9875\u6b63\u6587\u90e8\u5206\u4e0a\uff1a\"+window.screenTop;s+=\" \u7f51\u9875\u6b63\u6587\u90e8\u5206\u5de6\uff1a\"+window.screenLeft;s+=\" \u5c4f\u5e55\u5206\u8fa8\u7387\u7684\u9ad8\uff1a\"+window.screen.height;s+=\" \u5c4f\u5e55\u5206\u8fa8\u7387\u7684\u5bbd\uff1a\"+window.screen.width;s+=\" \u5c4f\u5e55\u53ef\u7528\u5de5\u4f5c\u533a\u9ad8\u5ea6\uff1a\"+window.screen.availHeight;s+=\" \u5c4f\u5e55\u53ef\u7528\u5de5\u4f5c\u533a\u5bbd\u5ea6\uff1a\"+window.screen.availWidth;s+=\" \u4f60\u7684\u5c4f\u5e55\u8bbe\u7f6e\u662f \"+window.screen.colorDepth+\" \u4f4d\u5f69\u8272\";s+=\" \u4f60\u7684\u5c4f\u5e55\u8bbe\u7f6e \"+window.screen.deviceXDPI+\" \u50cf\u7d20/\u82f1\u5bf8\";console.log(\"s:\"+s)}function resetMaskView(rect){createMaskView();this.hoverMaskView.style.display=\"block\";this.hoverMaskView.style.width=rect.width+\"px\";this.hoverMaskView.style.height=rect.height+\"px\";this.hoverMaskView.style.left=rect.left+\"px\";this.hoverMaskView.style.top=rect.top+\"px\"}function hideMaskView(){if(this.hoverMaskView){this.hoverMaskView.style.display=\"none\"}}function createMaskView(){if(this.hoverMaskView){return}this.hoverMaskView=document.createElement(\"div\"),this.hoverMaskView.id=\"vds-mask-view\",this.hoverMaskView.style.pointerEvents=\"none\",this.hoverMaskView.style.position=\"fixed\",this.hoverMaskView.style.backgroundColor=\"rgba(255, 72, 36, 0.3)\",this.hoverMaskView.style.borderRadius=\"3px\",this.hoverMaskView.style.border=\"rgba(255, 72, 36,0.78) solid 1px\",this.hoverMaskView.setAttribute(\"growing-ignore\",\"\"),this.hoverMaskView.style.margin=\"0\",this.hoverMaskView.style.padding=\"0\",this.hoverMaskView.style.width=\"0\",this.hoverMaskView.style.height=\"0\",this.hoverMaskView.style.left=\"0\",this.hoverMaskView.style.zIndex=\"99999\",this.hoverMaskView.style.display=\"none\",this.initScale=1;var e=document.querySelector(\"meta[name=\'viewport\']\");if(e&&e.content)for(var t=e.content.split(\",\"),i=0;i<t.length;i++){var n=t[i].split(\"=\");if(console.log(n),2==n.length){var r=n[0],a=n[1];if(\"initial-scale\"==r.trim()){this.initScale=parseFloat(a),NaN==this.initScale&&(this.initScale=1),console.log(\"page scale=\"+this.initScale);break}}}document.body.appendChild(this.hoverMaskView)}function getElemetNode(node){if(node.tagName.toLowerCase()!==\"body\"&&node.tagName.toLowerCase()!==\"html\"){return node}else if(node.parentNode!=null&&!node.parentNode.isSameNode(node.ownerDocument)){return getElemetNode(node.parentNode)}else{return null}}function showMaskViewWithNode(elem){createMaskView();var rect=elem.getBoundingClientRect();var hasNodes=elem.hasChildNodes();console.log(\"left:\"+rect.left+\",top:\"+rect.top+\",width:\"+rect.width+\",height:\"+rect.height+\",className:\"+elem.className+\",nodeName:\"+elem.nodeName+\",tagName:\"+elem.tagName+\",nodeType:\"+elem.nodeType+\",clientHeight:\"+elem.clientHeight+\",clientWidth:\"+elem.clientWidth);resetMaskView(rect)}function getElemetByPoint(x,y){var rx=x/window.widthScale;var ry=y/window.heightScale;var elem=document.elementFromPoint(rx,ry);if(elem){if(this.curNode&&this.curNode.isSameNode(elem)){return}var tag=elem.tagName.toLowerCase();console.log(\"elem tag:\"+tag);if(tag!=\"div\"){this.curNode=elem;showMaskViewWithNode(elem)}else{hideMaskView()}}else{hideMaskView()}}function cancleHoverNode(){hideMaskView();console.log(\"cancleHoverNode\");if(this.curNode){console.log(\"cancleHoverNode tagName:\"+this.curNode.tagName+\",text:\"+this.curNode.textContent);addListerer(this.curNode)}}function addListerer(node){if(node){node.addEventListener(\"click\",clickListener)}}function clickListener(){console.log(\"click node tag:\"+this.tagName+\",value:\"+this.textContent)}//}"

    return-object v0
.end method

.method static synthetic a(Lcn/jiguang/analytics/android/e/g/d;)Ljava/lang/ref/WeakReference;
    .locals 0

    iget-object p0, p0, Lcn/jiguang/analytics/android/e/g/d;->a:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method public static varargs a(Landroid/view/View;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "javascript:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "("

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ""

    const/4 v1, 0x0

    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_2

    aget-object v2, p2, v1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    instance-of p1, v2, Ljava/lang/String;

    const-string v2, "\'"

    if-eqz p1, :cond_0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    aget-object v3, p2, v1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v1, v1, 0x1

    const-string p1, ","

    goto :goto_0

    :cond_2
    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    instance-of p1, p0, Landroid/webkit/WebView;

    if-eqz p1, :cond_3

    check-cast p0, Landroid/webkit/WebView;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_3
    return-void
.end method


# virtual methods
.method public final onCloseWindow(Landroid/webkit/WebView;)V
    .locals 1

    iget-object v0, p0, Lcn/jiguang/analytics/android/e/g/d;->b:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1}, Landroid/webkit/WebChromeClient;->onCloseWindow(Landroid/webkit/WebView;)V

    return-void
.end method

.method public final onConsoleMessage(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcn/jiguang/analytics/android/e/g/d;->b:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebChromeClient;->onConsoleMessage(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public final onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
    .locals 1

    iget-object v0, p0, Lcn/jiguang/analytics/android/e/g/d;->b:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1}, Landroid/webkit/WebChromeClient;->onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z

    move-result p1

    return p1
.end method

.method public final onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z
    .locals 1

    iget-object v0, p0, Lcn/jiguang/analytics/android/e/g/d;->b:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/webkit/WebChromeClient;->onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z

    move-result p1

    return p1
.end method

.method public final onExceededDatabaseQuota(Ljava/lang/String;Ljava/lang/String;JJJLandroid/webkit/WebStorage$QuotaUpdater;)V
    .locals 11

    move-object v0, p0

    iget-object v1, v0, Lcn/jiguang/analytics/android/e/g/d;->b:Landroid/webkit/WebChromeClient;

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    move-object/from16 v10, p9

    invoke-virtual/range {v1 .. v10}, Landroid/webkit/WebChromeClient;->onExceededDatabaseQuota(Ljava/lang/String;Ljava/lang/String;JJJLandroid/webkit/WebStorage$QuotaUpdater;)V

    return-void
.end method

.method public final onGeolocationPermissionsHidePrompt()V
    .locals 1

    iget-object v0, p0, Lcn/jiguang/analytics/android/e/g/d;->b:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0}, Landroid/webkit/WebChromeClient;->onGeolocationPermissionsHidePrompt()V

    return-void
.end method

.method public final onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V
    .locals 1

    iget-object v0, p0, Lcn/jiguang/analytics/android/e/g/d;->b:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebChromeClient;->onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V

    return-void
.end method

.method public final onHideCustomView()V
    .locals 1

    iget-object v0, p0, Lcn/jiguang/analytics/android/e/g/d;->b:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0}, Landroid/webkit/WebChromeClient;->onHideCustomView()V

    return-void
.end method

.method public final onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 1

    iget-object v0, p0, Lcn/jiguang/analytics/android/e/g/d;->b:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/webkit/WebChromeClient;->onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result p1

    return p1
.end method

.method public final onJsBeforeUnload(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 1

    iget-object v0, p0, Lcn/jiguang/analytics/android/e/g/d;->b:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/webkit/WebChromeClient;->onJsBeforeUnload(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result p1

    return p1
.end method

.method public final onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 1

    iget-object v0, p0, Lcn/jiguang/analytics/android/e/g/d;->b:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/webkit/WebChromeClient;->onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result p1

    return p1
.end method

.method public final onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
    .locals 6

    iget-object v0, p0, Lcn/jiguang/analytics/android/e/g/d;->b:Landroid/webkit/WebChromeClient;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebChromeClient;->onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z

    move-result p1

    return p1
.end method

.method public final onJsTimeout()Z
    .locals 1

    iget-object v0, p0, Lcn/jiguang/analytics/android/e/g/d;->b:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0}, Landroid/webkit/WebChromeClient;->onJsTimeout()Z

    move-result v0

    return v0
.end method

.method public final onPermissionRequest(Landroid/webkit/PermissionRequest;)V
    .locals 1

    iget-object v0, p0, Lcn/jiguang/analytics/android/e/g/d;->b:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1}, Landroid/webkit/WebChromeClient;->onPermissionRequest(Landroid/webkit/PermissionRequest;)V

    return-void
.end method

.method public final onPermissionRequestCanceled(Landroid/webkit/PermissionRequest;)V
    .locals 1

    iget-object v0, p0, Lcn/jiguang/analytics/android/e/g/d;->b:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1}, Landroid/webkit/WebChromeClient;->onPermissionRequestCanceled(Landroid/webkit/PermissionRequest;)V

    return-void
.end method

.method public final onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 2

    invoke-virtual {p1, p0}, Landroid/webkit/WebView;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/16 v0, 0x3c

    if-lt p2, v0, :cond_0

    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x3e8

    invoke-virtual {p1, p0, v0, v1}, Landroid/webkit/WebView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    iget-object v0, p0, Lcn/jiguang/analytics/android/e/g/d;->b:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    return-void
.end method

.method public final onReachedMaxAppCacheSize(JJLandroid/webkit/WebStorage$QuotaUpdater;)V
    .locals 6

    iget-object v0, p0, Lcn/jiguang/analytics/android/e/g/d;->b:Landroid/webkit/WebChromeClient;

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebChromeClient;->onReachedMaxAppCacheSize(JJLandroid/webkit/WebStorage$QuotaUpdater;)V

    return-void
.end method

.method public final onReceivedIcon(Landroid/webkit/WebView;Landroid/graphics/Bitmap;)V
    .locals 1

    iget-object v0, p0, Lcn/jiguang/analytics/android/e/g/d;->b:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebChromeClient;->onReceivedIcon(Landroid/webkit/WebView;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public final onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcn/jiguang/analytics/android/e/g/d;->b:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebChromeClient;->onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method public final onReceivedTouchIconUrl(Landroid/webkit/WebView;Ljava/lang/String;Z)V
    .locals 1

    iget-object v0, p0, Lcn/jiguang/analytics/android/e/g/d;->b:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebChromeClient;->onReceivedTouchIconUrl(Landroid/webkit/WebView;Ljava/lang/String;Z)V

    return-void
.end method

.method public final onRequestFocus(Landroid/webkit/WebView;)V
    .locals 1

    iget-object v0, p0, Lcn/jiguang/analytics/android/e/g/d;->b:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1}, Landroid/webkit/WebChromeClient;->onRequestFocus(Landroid/webkit/WebView;)V

    return-void
.end method

.method public final onShowCustomView(Landroid/view/View;ILandroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 1

    iget-object v0, p0, Lcn/jiguang/analytics/android/e/g/d;->b:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebChromeClient;->onShowCustomView(Landroid/view/View;ILandroid/webkit/WebChromeClient$CustomViewCallback;)V

    return-void
.end method

.method public final onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 1

    iget-object v0, p0, Lcn/jiguang/analytics/android/e/g/d;->b:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebChromeClient;->onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V

    return-void
.end method

.method public final onShowFileChooser(Landroid/webkit/WebView;Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;)Z
    .locals 1

    iget-object v0, p0, Lcn/jiguang/analytics/android/e/g/d;->b:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebChromeClient;->onShowFileChooser(Landroid/webkit/WebView;Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;)Z

    move-result p1

    return p1
.end method

.method public final run()V
    .locals 6

    :try_start_0
    invoke-static {}, Lcn/jiguang/analytics/android/view/n;->a()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcn/jiguang/analytics/android/e/g/d;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    :try_start_1
    invoke-virtual {v0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    invoke-direct {p0}, Lcn/jiguang/analytics/android/e/g/d;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v0}, Landroid/webkit/WebView;->getRootView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    const-string v2, "initScreen"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v4

    invoke-static {v0, v2, v3}, Lcn/jiguang/analytics/android/e/g/d;->a(Landroid/view/View;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "JAnalyticsJsHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "load js error:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    :cond_1
    :goto_0
    return-void
.end method
