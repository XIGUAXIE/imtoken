.class public Lcom/pusher/client/util/HttpAuthorizer;
.super Ljava/lang/Object;
.source "HttpAuthorizer.java"

# interfaces
.implements Lcom/pusher/client/Authorizer;


# instance fields
.field private final endPoint:Ljava/net/URL;

.field private mConnectionFactory:Lcom/pusher/client/util/ConnectionFactory;

.field private mHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/pusher/client/util/HttpAuthorizer;->mHeaders:Ljava/util/Map;

    const/4 v0, 0x0

    .line 36
    iput-object v0, p0, Lcom/pusher/client/util/HttpAuthorizer;->mConnectionFactory:Lcom/pusher/client/util/ConnectionFactory;

    .line 46
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/pusher/client/util/HttpAuthorizer;->endPoint:Ljava/net/URL;

    .line 47
    new-instance p1, Lcom/pusher/client/util/UrlEncodedConnectionFactory;

    invoke-direct {p1}, Lcom/pusher/client/util/UrlEncodedConnectionFactory;-><init>()V

    iput-object p1, p0, Lcom/pusher/client/util/HttpAuthorizer;->mConnectionFactory:Lcom/pusher/client/util/ConnectionFactory;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 50
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Could not parse authentication end point into a valid URL"

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/pusher/client/util/ConnectionFactory;)V
    .locals 1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/pusher/client/util/HttpAuthorizer;->mHeaders:Ljava/util/Map;

    const/4 v0, 0x0

    .line 36
    iput-object v0, p0, Lcom/pusher/client/util/HttpAuthorizer;->mConnectionFactory:Lcom/pusher/client/util/ConnectionFactory;

    .line 62
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/pusher/client/util/HttpAuthorizer;->endPoint:Ljava/net/URL;

    .line 63
    iput-object p2, p0, Lcom/pusher/client/util/HttpAuthorizer;->mConnectionFactory:Lcom/pusher/client/util/ConnectionFactory;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 65
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string v0, "Could not parse authentication end point into a valid URL"

    invoke-direct {p2, v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method


# virtual methods
.method public authorize(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/pusher/client/AuthorizationFailureException;
        }
    .end annotation

    .line 89
    :try_start_0
    iget-object v0, p0, Lcom/pusher/client/util/HttpAuthorizer;->mConnectionFactory:Lcom/pusher/client/util/ConnectionFactory;

    invoke-virtual {v0, p1}, Lcom/pusher/client/util/ConnectionFactory;->setChannelName(Ljava/lang/String;)V

    .line 90
    iget-object p1, p0, Lcom/pusher/client/util/HttpAuthorizer;->mConnectionFactory:Lcom/pusher/client/util/ConnectionFactory;

    invoke-virtual {p1, p2}, Lcom/pusher/client/util/ConnectionFactory;->setSocketId(Ljava/lang/String;)V

    .line 91
    iget-object p1, p0, Lcom/pusher/client/util/HttpAuthorizer;->mConnectionFactory:Lcom/pusher/client/util/ConnectionFactory;

    invoke-virtual {p1}, Lcom/pusher/client/util/ConnectionFactory;->getBody()Ljava/lang/String;

    move-result-object p1

    .line 93
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    const-string v0, "Content-Type"

    .line 94
    iget-object v1, p0, Lcom/pusher/client/util/HttpAuthorizer;->mConnectionFactory:Lcom/pusher/client/util/ConnectionFactory;

    invoke-virtual {v1}, Lcom/pusher/client/util/ConnectionFactory;->getContentType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "charset"

    .line 95
    iget-object v1, p0, Lcom/pusher/client/util/HttpAuthorizer;->mConnectionFactory:Lcom/pusher/client/util/ConnectionFactory;

    invoke-virtual {v1}, Lcom/pusher/client/util/ConnectionFactory;->getCharset()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    invoke-virtual {p0}, Lcom/pusher/client/util/HttpAuthorizer;->isSSL()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/pusher/client/util/HttpAuthorizer;->endPoint:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    goto :goto_0

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/pusher/client/util/HttpAuthorizer;->endPoint:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    :goto_0
    const/4 v1, 0x1

    .line 104
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 105
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    const/4 v1, 0x0

    .line 106
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    const-string v2, "POST"

    .line 107
    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 110
    iget-object v2, p0, Lcom/pusher/client/util/HttpAuthorizer;->mHeaders:Ljava/util/Map;

    invoke-virtual {p2, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    const-string v2, "Content-Length"

    .line 112
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    array-length v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    invoke-virtual {p2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 115
    invoke-virtual {p2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 116
    invoke-virtual {v0, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 119
    :cond_1
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 122
    new-instance p2, Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {p2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 123
    invoke-virtual {p2, p1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p2}, Ljava/io/DataOutputStream;->flush()V

    .line 125
    invoke-virtual {p2}, Ljava/io/DataOutputStream;->close()V

    .line 128
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    .line 129
    new-instance p2, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p2, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 131
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    .line 132
    :goto_2
    invoke-virtual {p2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 133
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 135
    :cond_2
    invoke-virtual {p2}, Ljava/io/BufferedReader;->close()V

    .line 137
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p2

    const/16 v0, 0xc8

    if-eq p2, v0, :cond_4

    const/16 v0, 0xc9

    if-ne p2, v0, :cond_3

    goto :goto_3

    .line 139
    :cond_3
    new-instance p2, Lcom/pusher/client/AuthorizationFailureException;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/pusher/client/AuthorizationFailureException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 142
    :cond_4
    :goto_3
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 146
    new-instance p2, Lcom/pusher/client/AuthorizationFailureException;

    invoke-direct {p2, p1}, Lcom/pusher/client/AuthorizationFailureException;-><init>(Ljava/lang/Exception;)V

    throw p2
.end method

.method public isSSL()Ljava/lang/Boolean;
    .locals 2

    .line 83
    iget-object v0, p0, Lcom/pusher/client/util/HttpAuthorizer;->endPoint:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    const-string v1, "https"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public setHeaders(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 75
    iput-object p1, p0, Lcom/pusher/client/util/HttpAuthorizer;->mHeaders:Ljava/util/Map;

    return-void
.end method
