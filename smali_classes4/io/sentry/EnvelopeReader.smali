.class public final Lio/sentry/EnvelopeReader;
.super Ljava/lang/Object;
.source "EnvelopeReader.java"

# interfaces
.implements Lio/sentry/IEnvelopeReader;


# static fields
.field private static final UTF_8:Ljava/nio/charset/Charset;


# instance fields
.field private final gson:Lcom/google/gson/Gson;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "UTF-8"

    .line 20
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lio/sentry/EnvelopeReader;->UTF_8:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    const-class v1, Lio/sentry/SentryEnvelopeHeader;

    new-instance v2, Lio/sentry/SentryEnvelopeHeaderAdapter;

    invoke-direct {v2}, Lio/sentry/SentryEnvelopeHeaderAdapter;-><init>()V

    .line 24
    invoke-virtual {v0, v1, v2}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    move-result-object v0

    const-class v1, Lio/sentry/SentryEnvelopeItemHeader;

    new-instance v2, Lio/sentry/SentryEnvelopeItemHeaderAdapter;

    invoke-direct {v2}, Lio/sentry/SentryEnvelopeItemHeaderAdapter;-><init>()V

    .line 25
    invoke-virtual {v0, v1, v2}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    move-result-object v0

    .line 27
    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->disableHtmlEscaping()Lcom/google/gson/GsonBuilder;

    move-result-object v0

    .line 28
    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/EnvelopeReader;->gson:Lcom/google/gson/Gson;

    return-void
.end method

.method private deserializeEnvelopeHeader([BII)Lio/sentry/SentryEnvelopeHeader;
    .locals 2

    .line 141
    new-instance v0, Ljava/lang/String;

    sget-object v1, Lio/sentry/EnvelopeReader;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p1, p2, p3, v1}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 142
    iget-object p1, p0, Lio/sentry/EnvelopeReader;->gson:Lcom/google/gson/Gson;

    const-class p2, Lio/sentry/SentryEnvelopeHeader;

    invoke-virtual {p1, v0, p2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/SentryEnvelopeHeader;

    return-object p1
.end method

.method private deserializeEnvelopeItemHeader([BII)Lio/sentry/SentryEnvelopeItemHeader;
    .locals 2

    .line 147
    new-instance v0, Ljava/lang/String;

    sget-object v1, Lio/sentry/EnvelopeReader;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p1, p2, p3, v1}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 148
    iget-object p1, p0, Lio/sentry/EnvelopeReader;->gson:Lcom/google/gson/Gson;

    const-class p2, Lio/sentry/SentryEnvelopeItemHeader;

    invoke-virtual {p1, v0, p2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/SentryEnvelopeItemHeader;

    return-object p1
.end method


# virtual methods
.method public read(Ljava/io/InputStream;)Lio/sentry/SentryEnvelope;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x400

    new-array v0, v0, [B

    .line 37
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v5, 0x0

    .line 38
    :goto_0
    :try_start_0
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v6

    const/16 v7, 0xa

    if-lez v6, :cond_2

    const/4 v8, 0x0

    :goto_1
    if-ne v4, v3, :cond_1

    if-ge v8, v6, :cond_1

    .line 40
    aget-byte v9, v0, v8

    if-ne v9, v7, :cond_0

    add-int v4, v5, v8

    goto :goto_2

    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 45
    :cond_1
    :goto_2
    invoke-virtual {v1, v0, v2, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    add-int/2addr v5, v6

    goto :goto_0

    .line 49
    :cond_2
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    .line 51
    array-length v0, p1

    if-eqz v0, :cond_d

    if-eq v4, v3, :cond_c

    .line 59
    invoke-direct {p0, p1, v2, v4}, Lio/sentry/EnvelopeReader;->deserializeEnvelopeHeader([BII)Lio/sentry/SentryEnvelopeHeader;

    move-result-object v0

    if-eqz v0, :cond_b

    add-int/lit8 v4, v4, 0x1

    .line 67
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :cond_3
    move v5, v4

    .line 71
    :goto_3
    array-length v6, p1

    if-ge v5, v6, :cond_5

    .line 72
    aget-byte v6, p1, v5

    if-ne v6, v7, :cond_4

    goto :goto_4

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_5
    const/4 v5, -0x1

    :goto_4
    if-eq v5, v3, :cond_a

    sub-int v6, v5, v4

    .line 87
    invoke-direct {p0, p1, v4, v6}, Lio/sentry/EnvelopeReader;->deserializeEnvelopeItemHeader([BII)Lio/sentry/SentryEnvelopeItemHeader;

    move-result-object v4

    .line 90
    invoke-virtual {v4}, Lio/sentry/SentryEnvelopeItemHeader;->getLength()I

    move-result v6

    if-lez v6, :cond_9

    .line 99
    invoke-virtual {v4}, Lio/sentry/SentryEnvelopeItemHeader;->getLength()I

    move-result v6

    add-int/2addr v6, v5

    add-int/lit8 v6, v6, 0x1

    .line 100
    array-length v8, p1

    if-gt v6, v8, :cond_8

    add-int/lit8 v5, v5, 0x1

    .line 115
    invoke-static {p1, v5, v6}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v5

    .line 118
    new-instance v8, Lio/sentry/SentryEnvelopeItem;

    invoke-direct {v8, v4, v5}, Lio/sentry/SentryEnvelopeItem;-><init>(Lio/sentry/SentryEnvelopeItemHeader;[B)V

    .line 119
    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    array-length v4, p1

    if-ne v6, v4, :cond_6

    goto :goto_5

    :cond_6
    add-int/lit8 v4, v6, 0x1

    .line 124
    array-length v5, p1

    if-ne v4, v5, :cond_3

    .line 126
    aget-byte p1, p1, v6

    if-ne p1, v7, :cond_7

    .line 136
    :goto_5
    new-instance p1, Lio/sentry/SentryEnvelope;

    invoke-direct {p1, v0, v2}, Lio/sentry/SentryEnvelope;-><init>(Lio/sentry/SentryEnvelopeHeader;Ljava/lang/Iterable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    return-object p1

    .line 129
    :cond_7
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Envelope has invalid data following an item."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 101
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid length for item at index \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\'. Item is \'"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\' bytes. There are \'"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\' in the buffer."

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 91
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Item header at index \'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\' has an invalid value: \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    invoke-virtual {v4}, Lio/sentry/SentryEnvelopeItemHeader;->getLength()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\'."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 79
    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid envelope. Item at index \'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\'. has no header delimiter."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 61
    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Envelope header is null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 55
    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Envelope contains no header."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 52
    :cond_d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Empty stream."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    .line 37
    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    .line 137
    :try_start_3
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_6

    :catchall_2
    move-exception v1

    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_6
    throw v0
.end method
