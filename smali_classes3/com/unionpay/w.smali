.class final Lcom/unionpay/w;
.super Landroid/webkit/WebViewClient;


# instance fields
.field final synthetic a:Lcom/unionpay/WebViewJavascriptBridge;


# direct methods
.method private constructor <init>(Lcom/unionpay/WebViewJavascriptBridge;)V
    .locals 0

    iput-object p1, p0, Lcom/unionpay/w;->a:Lcom/unionpay/WebViewJavascriptBridge;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/unionpay/WebViewJavascriptBridge;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/unionpay/w;-><init>(Lcom/unionpay/WebViewJavascriptBridge;)V

    return-void
.end method


# virtual methods
.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    const-string p1, "test"

    const-string p2, "onPageFinished"

    invoke-static {p1, p2}, Lcom/unionpay/utils/j;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
