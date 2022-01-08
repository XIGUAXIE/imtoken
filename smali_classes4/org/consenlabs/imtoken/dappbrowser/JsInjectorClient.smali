.class Lorg/consenlabs/imtoken/dappbrowser/JsInjectorClient;
.super Ljava/lang/Object;
.source "JsInjectorClient.java"


# static fields
.field private static final DEFAULT_CHARSET:Ljava/lang/String; = "utf-8"

.field private static final DEFAULT_MIME_TYPE:Ljava/lang/String; = "text/html"

.field private static final JS_TAG_TEMPLATE:Ljava/lang/String; = "<script type=\"text/javascript\">%1$s</script>"


# instance fields
.field private final httpClient:Lokhttp3/OkHttpClient;

.field private mDAppSDK:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "void(0);"

    .line 26
    iput-object v0, p0, Lorg/consenlabs/imtoken/dappbrowser/JsInjectorClient;->mDAppSDK:Ljava/lang/String;

    .line 30
    invoke-direct {p0}, Lorg/consenlabs/imtoken/dappbrowser/JsInjectorClient;->createHttpClient()Lokhttp3/OkHttpClient;

    move-result-object v0

    iput-object v0, p0, Lorg/consenlabs/imtoken/dappbrowser/JsInjectorClient;->httpClient:Lokhttp3/OkHttpClient;

    return-void
.end method

.method private buildRequest(Ljava/lang/String;Ljava/util/Map;)Lokhttp3/Request;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lokhttp3/Request;"
        }
    .end annotation

    .line 119
    invoke-static {p1}, Lokhttp3/HttpUrl;->parse(Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 123
    :cond_0
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    .line 124
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->get()Lokhttp3/Request$Builder;

    move-result-object v0

    .line 125
    invoke-virtual {v0, p1}, Lokhttp3/Request$Builder;->url(Lokhttp3/HttpUrl;)Lokhttp3/Request$Builder;

    move-result-object p1

    .line 126
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 127
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 128
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    goto :goto_0

    .line 130
    :cond_1
    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    return-object p1
.end method

.method private buildResponse(Lokhttp3/Response;)Lorg/consenlabs/imtoken/dappbrowser/JsInjectorResponse;
    .locals 8

    .line 63
    invoke-virtual {p1}, Lokhttp3/Response;->code()I

    move-result v2

    const/4 v0, 0x0

    .line 65
    :try_start_0
    invoke-virtual {p1}, Lokhttp3/Response;->isSuccessful()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 66
    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v3, "READ_BODY_ERROR"

    const-string v4, "Ex"

    .line 69
    invoke-static {v3, v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 71
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v1

    .line 72
    invoke-virtual {p1}, Lokhttp3/Response;->priorResponse()Lokhttp3/Response;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 73
    invoke-virtual {v3}, Lokhttp3/Response;->isRedirect()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    const/4 v6, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 74
    :goto_1
    invoke-virtual {p0, v0}, Lorg/consenlabs/imtoken/dappbrowser/JsInjectorClient;->injectJS(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 75
    invoke-direct {p0, p1}, Lorg/consenlabs/imtoken/dappbrowser/JsInjectorClient;->getContentTypeHeader(Lokhttp3/Response;)Ljava/lang/String;

    move-result-object p1

    .line 76
    invoke-direct {p0, p1}, Lorg/consenlabs/imtoken/dappbrowser/JsInjectorClient;->getCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 77
    invoke-direct {p0, p1}, Lorg/consenlabs/imtoken/dappbrowser/JsInjectorClient;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 78
    invoke-virtual {v1}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object p1

    .line 79
    new-instance v7, Lorg/consenlabs/imtoken/dappbrowser/JsInjectorResponse;

    move-object v0, v7

    move-object v1, v3

    move-object v3, p1

    invoke-direct/range {v0 .. v6}, Lorg/consenlabs/imtoken/dappbrowser/JsInjectorResponse;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v7
.end method

.method private createHttpClient()Lokhttp3/OkHttpClient;
    .locals 2

    .line 171
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    new-instance v1, Lorg/consenlabs/imtoken/dappbrowser/WebViewCookieJar;

    invoke-direct {v1}, Lorg/consenlabs/imtoken/dappbrowser/WebViewCookieJar;-><init>()V

    .line 172
    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->cookieJar(Lokhttp3/CookieJar;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 173
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    return-object v0
.end method

.method private getCharset(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "charset=([a-zA-Z0-9-]+)"

    .line 142
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 143
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    .line 145
    invoke-virtual {p1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, "utf-8"

    return-object p1
.end method

.method private getContentTypeHeader(Lokhttp3/Response;)Ljava/lang/String;
    .locals 2

    .line 153
    invoke-virtual {p1}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object p1

    const-string v0, "Content-Type"

    .line 155
    invoke-virtual {p1, v0}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "content-Type"

    .line 156
    invoke-virtual {p1, v0}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p1, "text/data; charset=utf-8"

    goto :goto_0

    .line 159
    :cond_0
    invoke-virtual {p1, v0}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 162
    :cond_1
    invoke-virtual {p1, v0}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_2

    .line 165
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    :cond_2
    return-object p1
.end method

.method private getInjectionPosition(Ljava/lang/String;)I
    .locals 2

    .line 101
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string v0, "<!--"

    .line 102
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const-string v1, "<script"

    .line 103
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-gez v0, :cond_0

    goto :goto_0

    .line 109
    :cond_0
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    :goto_0
    if-gez v1, :cond_1

    const-string v0, "</head"

    .line 112
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    :cond_1
    return v1
.end method

.method private getMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "^.*(?=;)"

    .line 134
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 135
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, "text/html"

    return-object p1
.end method

.method private injectJS(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 88
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 91
    :cond_0
    invoke-direct {p0, p1}, Lorg/consenlabs/imtoken/dappbrowser/JsInjectorClient;->getInjectionPosition(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1

    const/4 v1, 0x0

    .line 93
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 94
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_1
    return-object p1
.end method


# virtual methods
.method assembleJs(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 57
    iget-object v1, p0, Lorg/consenlabs/imtoken/dappbrowser/JsInjectorClient;->mDAppSDK:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method injectJS(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "<script type=\"text/javascript\">%1$s</script>"

    .line 83
    invoke-virtual {p0, v0}, Lorg/consenlabs/imtoken/dappbrowser/JsInjectorClient;->assembleJs(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 84
    invoke-direct {p0, p1, v0}, Lorg/consenlabs/imtoken/dappbrowser/JsInjectorClient;->injectJS(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method loadUrl(Ljava/lang/String;Ljava/lang/String;)Lorg/consenlabs/imtoken/dappbrowser/JsInjectorResponse;
    .locals 2

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "User-Agent"

    .line 39
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    invoke-virtual {p0, p1, v0}, Lorg/consenlabs/imtoken/dappbrowser/JsInjectorClient;->loadUrl(Ljava/lang/String;Ljava/util/Map;)Lorg/consenlabs/imtoken/dappbrowser/JsInjectorResponse;

    move-result-object p1

    return-object p1
.end method

.method loadUrl(Ljava/lang/String;Ljava/util/Map;)Lorg/consenlabs/imtoken/dappbrowser/JsInjectorResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/consenlabs/imtoken/dappbrowser/JsInjectorResponse;"
        }
    .end annotation

    .line 45
    invoke-direct {p0, p1, p2}, Lorg/consenlabs/imtoken/dappbrowser/JsInjectorClient;->buildRequest(Ljava/lang/String;Ljava/util/Map;)Lokhttp3/Request;

    move-result-object p1

    .line 48
    :try_start_0
    iget-object p2, p0, Lorg/consenlabs/imtoken/dappbrowser/JsInjectorClient;->httpClient:Lokhttp3/OkHttpClient;

    invoke-virtual {p2, p1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p1

    invoke-interface {p1}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object p1

    .line 49
    invoke-direct {p0, p1}, Lorg/consenlabs/imtoken/dappbrowser/JsInjectorClient;->buildResponse(Lokhttp3/Response;)Lorg/consenlabs/imtoken/dappbrowser/JsInjectorResponse;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "REQUEST_ERROR"

    const-string v0, ""

    .line 51
    invoke-static {p2, v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public setDAppSDK(Ljava/lang/String;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lorg/consenlabs/imtoken/dappbrowser/JsInjectorClient;->mDAppSDK:Ljava/lang/String;

    return-void
.end method
