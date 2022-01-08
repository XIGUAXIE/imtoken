.class public Lorg/apache/commons/beanutils/converters/ArrayConverter;
.super Lorg/apache/commons/beanutils/converters/AbstractConverter;
.source "ArrayConverter.java"


# instance fields
.field private allowedChars:[C

.field private defaultSize:I

.field private final defaultType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private delimiter:C

.field private final elementConverter:Lorg/apache/commons/beanutils/Converter;

.field private onlyFirstToString:Z


# direct methods
.method public constructor <init>(Ljava/lang/Class;Lorg/apache/commons/beanutils/Converter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lorg/apache/commons/beanutils/Converter;",
            ")V"
        }
    .end annotation

    .line 150
    invoke-direct {p0}, Lorg/apache/commons/beanutils/converters/AbstractConverter;-><init>()V

    const/16 v0, 0x2c

    .line 133
    iput-char v0, p0, Lorg/apache/commons/beanutils/converters/ArrayConverter;->delimiter:C

    const/4 v0, 0x2

    new-array v0, v0, [C

    .line 134
    fill-array-data v0, :array_0

    iput-object v0, p0, Lorg/apache/commons/beanutils/converters/ArrayConverter;->allowedChars:[C

    const/4 v0, 0x1

    .line 135
    iput-boolean v0, p0, Lorg/apache/commons/beanutils/converters/ArrayConverter;->onlyFirstToString:Z

    if-eqz p1, :cond_2

    .line 154
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    .line 160
    iput-object p1, p0, Lorg/apache/commons/beanutils/converters/ArrayConverter;->defaultType:Ljava/lang/Class;

    .line 161
    iput-object p2, p0, Lorg/apache/commons/beanutils/converters/ArrayConverter;->elementConverter:Lorg/apache/commons/beanutils/Converter;

    return-void

    .line 158
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Component Converter is missing."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 155
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Default type must be an array."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 152
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Default type is missing"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :array_0
    .array-data 2
        0x2es
        0x2ds
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/Class;Lorg/apache/commons/beanutils/Converter;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lorg/apache/commons/beanutils/Converter;",
            "I)V"
        }
    .end annotation

    .line 177
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/beanutils/converters/ArrayConverter;-><init>(Ljava/lang/Class;Lorg/apache/commons/beanutils/Converter;)V

    .line 178
    iput p3, p0, Lorg/apache/commons/beanutils/converters/ArrayConverter;->defaultSize:I

    if-ltz p3, :cond_0

    .line 181
    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1, p3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 183
    :goto_0
    invoke-virtual {p0, p1}, Lorg/apache/commons/beanutils/converters/ArrayConverter;->setDefaultValue(Ljava/lang/Object;)V

    return-void
.end method

.method private parseElements(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 437
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/converters/ArrayConverter;->log()Lorg/apache/commons/logging/Log;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 438
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/converters/ArrayConverter;->log()Lorg/apache/commons/logging/Log;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Parsing elements, delimiter=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-char v2, p0, Lorg/apache/commons/beanutils/converters/ArrayConverter;->delimiter:C

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, "], value=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 442
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    const-string v0, "{"

    .line 443
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "}"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 444
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 450
    :cond_1
    :try_start_0
    new-instance v0, Ljava/io/StreamTokenizer;

    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p2}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/StreamTokenizer;-><init>(Ljava/io/Reader;)V

    .line 451
    iget-char p2, p0, Lorg/apache/commons/beanutils/converters/ArrayConverter;->delimiter:C

    iget-char v1, p0, Lorg/apache/commons/beanutils/converters/ArrayConverter;->delimiter:C

    invoke-virtual {v0, p2, v1}, Ljava/io/StreamTokenizer;->whitespaceChars(II)V

    const/16 p2, 0x39

    const/16 v1, 0x30

    .line 452
    invoke-virtual {v0, v1, p2}, Ljava/io/StreamTokenizer;->ordinaryChars(II)V

    .line 453
    invoke-virtual {v0, v1, p2}, Ljava/io/StreamTokenizer;->wordChars(II)V

    .line 454
    iget-object p2, p0, Lorg/apache/commons/beanutils/converters/ArrayConverter;->allowedChars:[C

    array-length v1, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-char v3, p2, v2

    .line 455
    invoke-virtual {v0, v3, v3}, Ljava/io/StreamTokenizer;->ordinaryChars(II)V

    .line 456
    invoke-virtual {v0, v3, v3}, Ljava/io/StreamTokenizer;->wordChars(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    .line 462
    :cond_3
    :goto_1
    invoke-virtual {v0}, Ljava/io/StreamTokenizer;->nextToken()I

    move-result v1

    const/4 v2, -0x3

    if-eq v1, v2, :cond_8

    if-lez v1, :cond_4

    goto :goto_2

    :cond_4
    const/4 v0, -0x1

    if-ne v1, v0, :cond_7

    if-nez p2, :cond_5

    .line 479
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p2

    .line 481
    :cond_5
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/converters/ArrayConverter;->log()Lorg/apache/commons/logging/Log;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 482
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/converters/ArrayConverter;->log()Lorg/apache/commons/logging/Log;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " elements parsed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    :cond_6
    return-object p2

    .line 473
    :cond_7
    new-instance p2, Lorg/apache/commons/beanutils/ConversionException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Encountered token of type "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " parsing elements to \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 474
    invoke-virtual {p0, p1}, Lorg/apache/commons/beanutils/converters/ArrayConverter;->toString(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Lorg/apache/commons/beanutils/ConversionException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 464
    :cond_8
    :goto_2
    iget-object v1, v0, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    if-eqz v1, :cond_3

    if-nez p2, :cond_9

    .line 466
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 468
    :cond_9
    iget-object v1, v0, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    .line 490
    new-instance v0, Lorg/apache/commons/beanutils/ConversionException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error converting from String to \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 491
    invoke-virtual {p0, p1}, Lorg/apache/commons/beanutils/converters/ArrayConverter;->toString(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\': "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Lorg/apache/commons/beanutils/ConversionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method protected convertArray(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    return-object p1
.end method

.method protected convertToCollection(Ljava/lang/Class;Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Collection<",
            "*>;"
        }
    .end annotation

    .line 357
    instance-of v0, p2, Ljava/util/Collection;

    if-eqz v0, :cond_0

    .line 358
    check-cast p2, Ljava/util/Collection;

    return-object p2

    .line 360
    :cond_0
    instance-of v0, p2, Ljava/lang/Number;

    if-nez v0, :cond_2

    instance-of v0, p2, Ljava/lang/Boolean;

    if-nez v0, :cond_2

    instance-of v0, p2, Ljava/util/Date;

    if-eqz v0, :cond_1

    goto :goto_0

    .line 368
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/beanutils/converters/ArrayConverter;->parseElements(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 363
    :cond_2
    :goto_0
    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 364
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method protected convertToString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 240
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 241
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 242
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    goto :goto_0

    .line 244
    :cond_0
    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/beanutils/converters/ArrayConverter;->convertToCollection(Ljava/lang/Class;Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    .line 245
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    .line 246
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v7, v1

    move-object v1, v0

    move v0, v7

    :goto_0
    if-nez v0, :cond_1

    .line 250
    const-class p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/apache/commons/beanutils/converters/ArrayConverter;->getDefault(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 253
    :cond_1
    iget-boolean v2, p0, Lorg/apache/commons/beanutils/converters/ArrayConverter;->onlyFirstToString:Z

    if-eqz v2, :cond_2

    const/4 v0, 0x1

    .line 258
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v0, :cond_6

    if-lez v3, :cond_3

    .line 261
    iget-char v4, p0, Lorg/apache/commons/beanutils/converters/ArrayConverter;->delimiter:C

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_3
    if-nez v1, :cond_4

    .line 263
    invoke-static {p1, v3}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v4

    goto :goto_2

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 264
    :goto_2
    iget-object v5, p0, Lorg/apache/commons/beanutils/converters/ArrayConverter;->elementConverter:Lorg/apache/commons/beanutils/Converter;

    const-class v6, Ljava/lang/String;

    invoke-interface {v5, v6, v4}, Lorg/apache/commons/beanutils/Converter;->convert(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 266
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 270
    :cond_6
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected convertToType(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 286
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    .line 295
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 296
    invoke-static {p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    goto :goto_0

    .line 298
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/beanutils/converters/ArrayConverter;->convertToCollection(Ljava/lang/Class;Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    .line 299
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    .line 300
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 304
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    .line 305
    invoke-static {p1, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_2

    if-nez v0, :cond_1

    .line 309
    invoke-static {p2, v3}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v4

    goto :goto_2

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 312
    :goto_2
    iget-object v5, p0, Lorg/apache/commons/beanutils/converters/ArrayConverter;->elementConverter:Lorg/apache/commons/beanutils/Converter;

    invoke-interface {v5, p1, v4}, Lorg/apache/commons/beanutils/Converter;->convert(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 313
    invoke-static {v2, v3, v4}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    return-object v2

    .line 287
    :cond_3
    new-instance p2, Lorg/apache/commons/beanutils/ConversionException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/beanutils/converters/ArrayConverter;->toString(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " cannot handle conversion to \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    invoke-virtual {p0, p1}, Lorg/apache/commons/beanutils/converters/ArrayConverter;->toString(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' (not an array)."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/apache/commons/beanutils/ConversionException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method protected getDefault(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 379
    const-class v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 383
    :cond_0
    invoke-super {p0, p1}, Lorg/apache/commons/beanutils/converters/AbstractConverter;->getDefault(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    .line 388
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-object v0

    .line 391
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    iget v0, p0, Lorg/apache/commons/beanutils/converters/ArrayConverter;->defaultSize:I

    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected getDefaultType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 225
    iget-object v0, p0, Lorg/apache/commons/beanutils/converters/ArrayConverter;->defaultType:Ljava/lang/Class;

    return-object v0
.end method

.method public setAllowedChars([C)V
    .locals 0

    .line 202
    iput-object p1, p0, Lorg/apache/commons/beanutils/converters/ArrayConverter;->allowedChars:[C

    return-void
.end method

.method public setDelimiter(C)V
    .locals 0

    .line 192
    iput-char p1, p0, Lorg/apache/commons/beanutils/converters/ArrayConverter;->delimiter:C

    return-void
.end method

.method public setOnlyFirstToString(Z)V
    .locals 0

    .line 215
    iput-boolean p1, p0, Lorg/apache/commons/beanutils/converters/ArrayConverter;->onlyFirstToString:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 403
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 404
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/beanutils/converters/ArrayConverter;->toString(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[UseDefault="

    .line 405
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 406
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/converters/ArrayConverter;->isUseDefault()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", "

    .line 407
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 408
    iget-object v1, p0, Lorg/apache/commons/beanutils/converters/ArrayConverter;->elementConverter:Lorg/apache/commons/beanutils/Converter;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    .line 409
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 410
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
