.class public final Lcn/jiguang/analytics/android/e/c/e;
.super Ljava/lang/Object;


# static fields
.field public static a:Ljavax/net/ssl/SSLContext;

.field public static b:Ljavax/net/ssl/TrustManager;

.field private static final c:Ljava/text/SimpleDateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v2, "EEE, d MMM yyyy HH:mm:ss z"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcn/jiguang/analytics/android/e/c/e;->c:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public static a(Lcn/jiguang/analytics/android/e/c/b;Ljava/lang/String;)Lcn/jiguang/analytics/android/e/c/c;
    .locals 11

    const-string v0, "createSSLConnection e:"

    const-string v1, "UTF-8"

    const-string v2, "httpPost e:"

    const-string v3, "HttpUtils"

    const/4 v4, 0x0

    if-nez p0, :cond_0

    return-object v4

    :cond_0
    new-instance v5, Lcn/jiguang/analytics/android/e/c/c;

    invoke-virtual {p0}, Lcn/jiguang/analytics/android/e/c/b;->a()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcn/jiguang/analytics/android/e/c/c;-><init>(Ljava/lang/String;)V

    :try_start_0
    new-instance v6, Ljava/net/URL;

    invoke-virtual {p0}, Lcn/jiguang/analytics/android/e/c/b;->a()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v6

    check-cast v6, Ljava/net/HttpURLConnection;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    instance-of v7, v6, Ljavax/net/ssl/HttpsURLConnection;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/4 v8, 0x1

    if-eqz v7, :cond_1

    :try_start_3
    new-array v7, v8, [Ljavax/net/ssl/TrustManager;

    new-instance v9, Lcn/jiguang/analytics/android/e/c/g;

    invoke-direct {v9}, Lcn/jiguang/analytics/android/e/c/g;-><init>()V

    sput-object v9, Lcn/jiguang/analytics/android/e/c/e;->b:Ljavax/net/ssl/TrustManager;

    const/4 v10, 0x0

    aput-object v9, v7, v10

    const-string v9, "TLS"

    invoke-static {v9}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v9

    sput-object v9, Lcn/jiguang/analytics/android/e/c/e;->a:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v9, v4, v7, v4}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V
    :try_end_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/security/KeyManagementException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catch_0
    move-exception v7

    :try_start_4
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v3, v0}, Lcn/jiguang/analytics/android/e/a/b;->f(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_1
    move-exception v7

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :goto_1
    sget-object v0, Lcn/jiguang/analytics/android/e/c/e;->a:Ljavax/net/ssl/SSLContext;

    if-eqz v0, :cond_1

    sget-object v0, Lcn/jiguang/analytics/android/e/c/e;->b:Ljavax/net/ssl/TrustManager;

    if-eqz v0, :cond_1

    move-object v0, v6

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    sget-object v7, Lcn/jiguang/analytics/android/e/c/e;->a:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v7}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    move-object v0, v6

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    new-instance v7, Lcn/jiguang/analytics/android/e/c/a;

    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v9

    invoke-virtual {v9}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9}, Lcn/jiguang/analytics/android/e/c/a;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    :cond_1
    const-string v0, "Charset"

    invoke-virtual {v6, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "content-type"

    const-string v7, "application/json;charset=UTF-8"

    invoke-virtual {v6, v0, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_4

    if-nez v6, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcn/jiguang/analytics/android/e/c/b;->d()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0, v6}, Lcn/jiguang/analytics/android/e/c/e;->a(Ljava/util/Map;Ljava/net/HttpURLConnection;)V

    invoke-virtual {p0}, Lcn/jiguang/analytics/android/e/c/b;->b()I

    move-result v0

    if-ltz v0, :cond_3

    invoke-virtual {p0}, Lcn/jiguang/analytics/android/e/c/b;->b()I

    move-result v0

    invoke-virtual {v6, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    :cond_3
    invoke-virtual {p0}, Lcn/jiguang/analytics/android/e/c/b;->c()I

    move-result v0

    if-ltz v0, :cond_4

    invoke-virtual {p0}, Lcn/jiguang/analytics/android/e/c/b;->c()I

    move-result p0

    invoke-virtual {v6, p0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    :cond_4
    :goto_2
    const-string p0, "POST"

    invoke-virtual {v6, p0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    invoke-virtual {v6, v8}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p0

    const/16 p1, 0xc8

    if-ne p0, p1, :cond_5

    new-instance p0, Ljava/io/BufferedReader;

    new-instance p1, Ljava/io/InputStreamReader;

    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {p1, v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    goto :goto_3

    :cond_5
    new-instance p0, Ljava/io/BufferedReader;

    new-instance p1, Ljava/io/InputStreamReader;

    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {p1, v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :goto_3
    move-object v4, p0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_4
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_6
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v5, p0}, Lcn/jiguang/analytics/android/e/c/c;->a(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p0

    invoke-virtual {v5, p0}, Lcn/jiguang/analytics/android/e/c/c;->a(I)V

    const-string p0, "expires"

    const-string p1, "Expires"

    invoke-virtual {v6, p1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p0, p1}, Lcn/jiguang/analytics/android/e/c/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "cache-control"

    const-string p1, "Cache-Control"

    invoke-virtual {v6, p1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p0, p1}, Lcn/jiguang/analytics/android/e/c/c;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_7

    :catch_2
    move-exception p0

    goto :goto_5

    :catch_3
    move-exception p0

    move-object v6, v4

    :goto_5
    :try_start_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcn/jiguang/analytics/android/e/a/b;->f(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0xbb6

    invoke-virtual {v5, p1}, Lcn/jiguang/analytics/android/e/c/c;->a(I)V

    const-string/jumbo p1, "\u7f51\u7edc\u9519\u8bef"

    invoke-virtual {v5, p1}, Lcn/jiguang/analytics/android/e/c/c;->a(Ljava/lang/String;)V

    instance-of p1, p0, Ljava/net/SocketTimeoutException;

    if-eqz p1, :cond_7

    const/16 p0, 0xbb9

    invoke-virtual {v5, p0}, Lcn/jiguang/analytics/android/e/c/c;->a(I)V

    const-string/jumbo p0, "\u8bf7\u6c42\u8d85\u65f6"

    :goto_6
    invoke-virtual {v5, p0}, Lcn/jiguang/analytics/android/e/c/c;->a(Ljava/lang/String;)V

    goto :goto_7

    :cond_7
    instance-of p0, p0, Ljava/net/UnknownHostException;

    if-eqz p0, :cond_8

    const/16 p0, 0xbbb

    invoke-virtual {v5, p0}, Lcn/jiguang/analytics/android/e/c/c;->a(I)V

    const-string/jumbo p0, "\u57df\u540d\u65e0\u6548"
    :try_end_5
    .catch Ljava/net/MalformedURLException; {:try_start_5 .. :try_end_5} :catch_6
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_6

    :cond_8
    :goto_7
    if-eqz v4, :cond_9

    :try_start_6
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_8

    :catch_4
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcn/jiguang/analytics/android/e/a/b;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    :goto_8
    if-eqz v6, :cond_b

    goto :goto_a

    :catchall_0
    move-exception p0

    move-object v6, v4

    goto :goto_b

    :catch_5
    move-object v6, v4

    :catch_6
    const/16 p0, 0xbbc

    :try_start_7
    invoke-virtual {v5, p0}, Lcn/jiguang/analytics/android/e/c/c;->a(I)V

    const-string p0, "MalformedURLException"

    invoke-virtual {v5, p0}, Lcn/jiguang/analytics/android/e/c/c;->a(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-eqz v4, :cond_a

    :try_start_8
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    goto :goto_9

    :catch_7
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcn/jiguang/analytics/android/e/a/b;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    :goto_9
    if-eqz v6, :cond_b

    :goto_a
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_b
    return-object v5

    :catchall_1
    move-exception p0

    :goto_b
    if-eqz v4, :cond_c

    :try_start_9
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8

    goto :goto_c

    :catch_8
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcn/jiguang/analytics/android/e/a/b;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    :goto_c
    if-eqz v6, :cond_d

    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_d
    throw p0
.end method

.method private static a(Ljava/util/Map;Ljava/net/HttpURLConnection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/net/HttpURLConnection;",
            ")V"
        }
    .end annotation

    if-eqz p0, :cond_2

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    if-eqz v0, :cond_2

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcn/jiguang/analytics/android/e/g/i;->c(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method
