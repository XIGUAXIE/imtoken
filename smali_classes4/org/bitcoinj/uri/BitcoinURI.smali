.class public Lorg/bitcoinj/uri/BitcoinURI;
.super Ljava/lang/Object;
.source "BitcoinURI.java"


# static fields
.field private static final AMPERSAND_SEPARATOR:Ljava/lang/String; = "&"

.field public static final BITCOIN_SCHEME:Ljava/lang/String; = "bitcoin"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final ENCODED_SPACE_CHARACTER:Ljava/lang/String; = "%20"

.field public static final FIELD_ADDRESS:Ljava/lang/String; = "address"

.field public static final FIELD_AMOUNT:Ljava/lang/String; = "amount"

.field public static final FIELD_LABEL:Ljava/lang/String; = "label"

.field public static final FIELD_MESSAGE:Ljava/lang/String; = "message"

.field public static final FIELD_PAYMENT_REQUEST_URL:Ljava/lang/String; = "r"

.field private static final QUESTION_MARK_SEPARATOR:Ljava/lang/String; = "?"


# instance fields
.field private final parameterMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/uri/BitcoinURIParseException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 110
    invoke-direct {p0, v0, p1}, Lorg/bitcoinj/uri/BitcoinURI;-><init>(Lorg/bitcoinj/core/NetworkParameters;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lorg/bitcoinj/core/NetworkParameters;Ljava/lang/String;)V
    .locals 4
    .param p1    # Lorg/bitcoinj/core/NetworkParameters;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/uri/BitcoinURIParseException;
        }
    .end annotation

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/bitcoinj/uri/BitcoinURI;->parameterMap:Ljava/util/Map;

    .line 123
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p1, :cond_0

    const-string v0, "bitcoin"

    goto :goto_0

    .line 127
    :cond_0
    invoke-virtual {p1}, Lorg/bitcoinj/core/NetworkParameters;->getUriScheme()Ljava/lang/String;

    move-result-object v0

    .line 132
    :goto_0
    :try_start_0
    new-instance v1, Ljava/net/URI;

    invoke-direct {v1, p2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_1

    .line 146
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 147
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 149
    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 150
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    .line 151
    :cond_1
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 152
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    :goto_1
    const/4 v0, 0x2

    const-string v1, "\\?"

    .line 158
    invoke-virtual {p2, v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p2

    .line 159
    array-length v0, p2

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    .line 161
    aget-object v1, p2, v0

    .line 164
    array-length v2, p2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    new-array p2, v0, [Ljava/lang/String;

    goto :goto_2

    .line 169
    :cond_2
    aget-object p2, p2, v3

    const-string v0, "&"

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 173
    :goto_2
    invoke-direct {p0, p1, v1, p2}, Lorg/bitcoinj/uri/BitcoinURI;->parseParameters(Lorg/bitcoinj/core/NetworkParameters;Ljava/lang/String;[Ljava/lang/String;)V

    .line 175
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_3

    .line 178
    :try_start_1
    invoke-static {p1, v1}, Lorg/bitcoinj/core/Address;->fromBase58(Lorg/bitcoinj/core/NetworkParameters;Ljava/lang/String;)Lorg/bitcoinj/core/Address;

    move-result-object p1

    const-string p2, "address"

    .line 179
    invoke-direct {p0, p2, p1}, Lorg/bitcoinj/uri/BitcoinURI;->putWithValidation(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Lorg/bitcoinj/core/AddressFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 181
    new-instance p2, Lorg/bitcoinj/uri/BitcoinURIParseException;

    const-string v0, "Bad address"

    invoke-direct {p2, v0, p1}, Lorg/bitcoinj/uri/BitcoinURIParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 185
    :cond_3
    :goto_3
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Lorg/bitcoinj/uri/BitcoinURI;->getPaymentRequestUrl()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    goto :goto_4

    .line 186
    :cond_4
    new-instance p1, Lorg/bitcoinj/uri/BitcoinURIParseException;

    const-string p2, "No address and no r= parameter found"

    invoke-direct {p1, p2}, Lorg/bitcoinj/uri/BitcoinURIParseException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    :goto_4
    return-void

    .line 160
    :cond_6
    new-instance p1, Lorg/bitcoinj/uri/BitcoinURIParseException;

    const-string p2, "No data found after the bitcoin: prefix"

    invoke-direct {p1, p2}, Lorg/bitcoinj/uri/BitcoinURIParseException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 154
    :cond_7
    new-instance p1, Lorg/bitcoinj/uri/BitcoinURIParseException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unsupported URI scheme: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/bitcoinj/uri/BitcoinURIParseException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_1
    move-exception p1

    .line 134
    new-instance p2, Lorg/bitcoinj/uri/BitcoinURIParseException;

    const-string v0, "Bad URI syntax"

    invoke-direct {p2, v0, p1}, Lorg/bitcoinj/uri/BitcoinURIParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public static convertToBitcoinURI(Lorg/bitcoinj/core/Address;Lorg/bitcoinj/core/Coin;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 350
    invoke-virtual {p0}, Lorg/bitcoinj/core/Address;->getParameters()Lorg/bitcoinj/core/NetworkParameters;

    move-result-object v0

    invoke-virtual {p0}, Lorg/bitcoinj/core/Address;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, p1, p2, p3}, Lorg/bitcoinj/uri/BitcoinURI;->convertToBitcoinURI(Lorg/bitcoinj/core/NetworkParameters;Ljava/lang/String;Lorg/bitcoinj/core/Coin;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static convertToBitcoinURI(Lorg/bitcoinj/core/NetworkParameters;Ljava/lang/String;Lorg/bitcoinj/core/Coin;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p2    # Lorg/bitcoinj/core/Coin;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 367
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_1

    .line 369
    invoke-virtual {p2}, Lorg/bitcoinj/core/Coin;->signum()I

    move-result v0

    if-ltz v0, :cond_0

    goto :goto_0

    .line 370
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Coin must be positive"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 373
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 374
    invoke-virtual {p0}, Lorg/bitcoinj/core/NetworkParameters;->getUriScheme()Ljava/lang/String;

    move-result-object p0

    .line 375
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ":"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p0, 0x0

    const/4 p1, 0x1

    const-string v1, "="

    const-string v2, "?"

    if-eqz p2, :cond_2

    .line 380
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "amount"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 381
    invoke-virtual {p2}, Lorg/bitcoinj/core/Coin;->toPlainString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p0, 0x1

    :cond_2
    const-string p2, "&"

    const-string v3, ""

    if-eqz p3, :cond_4

    .line 385
    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    if-eqz p0, :cond_3

    .line 387
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move p1, p0

    goto :goto_1

    .line 389
    :cond_3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    const-string p0, "label"

    .line 392
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lorg/bitcoinj/uri/BitcoinURI;->encodeURLString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move p0, p1

    :cond_4
    if-eqz p4, :cond_6

    .line 395
    invoke-virtual {v3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    if-eqz p0, :cond_5

    .line 397
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 399
    :cond_5
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    const-string p0, "message"

    .line 401
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p4}, Lorg/bitcoinj/uri/BitcoinURI;->encodeURLString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 404
    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static encodeURLString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    :try_start_0
    const-string v0, "UTF-8"

    .line 414
    invoke-static {p0, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "+"

    const-string v1, "%20"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 416
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private parseParameters(Lorg/bitcoinj/core/NetworkParameters;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 7
    .param p1    # Lorg/bitcoinj/core/NetworkParameters;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/uri/BitcoinURIParseException;
        }
    .end annotation

    .line 197
    array-length p2, p3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_8

    aget-object v2, p3, v1

    const/16 v3, 0x3d

    .line 198
    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, -0x1

    const-string v5, "\'"

    if-eq v3, v4, :cond_7

    if-eqz v3, :cond_6

    .line 205
    invoke-virtual {v2, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v4, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    .line 206
    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "amount"

    .line 209
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 v4, 0x1

    .line 212
    :try_start_0
    invoke-static {v2}, Lorg/bitcoinj/core/Coin;->parseCoin(Ljava/lang/String;)Lorg/bitcoinj/core/Coin;

    move-result-object v5

    if-eqz p1, :cond_1

    .line 213
    invoke-virtual {p1}, Lorg/bitcoinj/core/NetworkParameters;->getMaxMoney()Lorg/bitcoinj/core/Coin;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/bitcoinj/core/Coin;->isGreaterThan(Lorg/bitcoinj/core/Coin;)Z

    move-result v6

    if-nez v6, :cond_0

    goto :goto_1

    .line 214
    :cond_0
    new-instance p1, Lorg/bitcoinj/uri/BitcoinURIParseException;

    const-string p2, "Max number of coins exceeded"

    invoke-direct {p1, p2}, Lorg/bitcoinj/uri/BitcoinURIParseException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 215
    :cond_1
    :goto_1
    invoke-virtual {v5}, Lorg/bitcoinj/core/Coin;->signum()I

    move-result v6

    if-ltz v6, :cond_2

    .line 217
    invoke-direct {p0, v3, v5}, Lorg/bitcoinj/uri/BitcoinURI;->putWithValidation(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    .line 216
    :cond_2
    new-instance p1, Ljava/lang/ArithmeticException;

    const-string p2, "Negative coins specified"

    invoke-direct {p1, p2}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 221
    new-instance p2, Lorg/bitcoinj/uri/OptionalFieldValidationException;

    sget-object p3, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v1, v4, [Ljava/lang/Object;

    aput-object v2, v1, v0

    const-string v0, "\'%s\' has too many decimal places"

    invoke-static {p3, v0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lorg/bitcoinj/uri/OptionalFieldValidationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 219
    new-instance p2, Lorg/bitcoinj/uri/OptionalFieldValidationException;

    sget-object p3, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v1, v4, [Ljava/lang/Object;

    aput-object v2, v1, v0

    const-string v0, "\'%s\' is not a valid amount"

    invoke-static {p3, v0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lorg/bitcoinj/uri/OptionalFieldValidationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_3
    const-string v3, "req-"

    .line 224
    invoke-virtual {v4, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 230
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_4

    const-string v3, "UTF-8"

    .line 231
    invoke-static {v2, v3}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v4, v2}, Lorg/bitcoinj/uri/BitcoinURI;->putWithValidation(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_2

    :cond_4
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :catch_2
    move-exception p1

    .line 233
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 226
    :cond_5
    new-instance p1, Lorg/bitcoinj/uri/RequiredFieldValidationException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\' is required but not known, this URI is not valid"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/bitcoinj/uri/RequiredFieldValidationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 203
    :cond_6
    new-instance p1, Lorg/bitcoinj/uri/BitcoinURIParseException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Malformed Bitcoin URI - empty name \'"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/bitcoinj/uri/BitcoinURIParseException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 200
    :cond_7
    new-instance p1, Lorg/bitcoinj/uri/BitcoinURIParseException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Malformed Bitcoin URI - no separator in \'"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/bitcoinj/uri/BitcoinURIParseException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    return-void
.end method

.method private putWithValidation(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/uri/BitcoinURIParseException;
        }
    .end annotation

    .line 250
    iget-object v0, p0, Lorg/bitcoinj/uri/BitcoinURI;->parameterMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 253
    iget-object v0, p0, Lorg/bitcoinj/uri/BitcoinURI;->parameterMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 251
    :cond_0
    new-instance p2, Lorg/bitcoinj/uri/BitcoinURIParseException;

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "\'%s\' is duplicated, URI is invalid"

    invoke-static {v0, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/bitcoinj/uri/BitcoinURIParseException;-><init>(Ljava/lang/String;)V

    throw p2
.end method


# virtual methods
.method public getAddress()Lorg/bitcoinj/core/Address;
    .locals 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 264
    iget-object v0, p0, Lorg/bitcoinj/uri/BitcoinURI;->parameterMap:Ljava/util/Map;

    const-string v1, "address"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/core/Address;

    return-object v0
.end method

.method public getAmount()Lorg/bitcoinj/core/Coin;
    .locals 2

    .line 272
    iget-object v0, p0, Lorg/bitcoinj/uri/BitcoinURI;->parameterMap:Ljava/util/Map;

    const-string v1, "amount"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/core/Coin;

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 2

    .line 279
    iget-object v0, p0, Lorg/bitcoinj/uri/BitcoinURI;->parameterMap:Ljava/util/Map;

    const-string v1, "label"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 2

    .line 286
    iget-object v0, p0, Lorg/bitcoinj/uri/BitcoinURI;->parameterMap:Ljava/util/Map;

    const-string v1, "message"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getParameterByName(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 320
    iget-object v0, p0, Lorg/bitcoinj/uri/BitcoinURI;->parameterMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getPaymentRequestUrl()Ljava/lang/String;
    .locals 2

    .line 294
    iget-object v0, p0, Lorg/bitcoinj/uri/BitcoinURI;->parameterMap:Ljava/util/Map;

    const-string v1, "r"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getPaymentRequestUrls()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 302
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 304
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 305
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "r"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-lez v1, :cond_0

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_0
    const-string v1, ""

    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 306
    iget-object v2, p0, Lorg/bitcoinj/uri/BitcoinURI;->parameterMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_1

    .line 311
    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    return-object v0

    .line 309
    :cond_1
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 325
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BitcoinURI["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 327
    iget-object v1, p0, Lorg/bitcoinj/uri/BitcoinURI;->parameterMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_1

    :cond_0
    const-string v4, ","

    .line 331
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    const-string v4, "\'"

    .line 333
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\'="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string v1, "]"

    .line 335
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
