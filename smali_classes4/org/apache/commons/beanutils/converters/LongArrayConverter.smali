.class public final Lorg/apache/commons/beanutils/converters/LongArrayConverter;
.super Lorg/apache/commons/beanutils/converters/AbstractArrayConverter;
.source "LongArrayConverter.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final MODEL:[J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [J

    .line 76
    sput-object v0, Lorg/apache/commons/beanutils/converters/LongArrayConverter;->MODEL:[J

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Lorg/apache/commons/beanutils/converters/AbstractArrayConverter;-><init>()V

    const/4 v0, 0x0

    .line 50
    iput-object v0, p0, Lorg/apache/commons/beanutils/converters/LongArrayConverter;->defaultValue:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 51
    iput-boolean v0, p0, Lorg/apache/commons/beanutils/converters/LongArrayConverter;->useDefault:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Lorg/apache/commons/beanutils/converters/AbstractArrayConverter;-><init>()V

    .line 64
    iput-object p1, p0, Lorg/apache/commons/beanutils/converters/LongArrayConverter;->defaultValue:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 65
    iput-boolean p1, p0, Lorg/apache/commons/beanutils/converters/LongArrayConverter;->useDefault:Z

    return-void
.end method


# virtual methods
.method public convert(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    if-nez p2, :cond_1

    .line 98
    iget-boolean p1, p0, Lorg/apache/commons/beanutils/converters/LongArrayConverter;->useDefault:Z

    if-eqz p1, :cond_0

    .line 99
    iget-object p1, p0, Lorg/apache/commons/beanutils/converters/LongArrayConverter;->defaultValue:Ljava/lang/Object;

    return-object p1

    .line 101
    :cond_0
    new-instance p1, Lorg/apache/commons/beanutils/ConversionException;

    const-string p2, "No value specified"

    invoke-direct {p1, p2}, Lorg/apache/commons/beanutils/ConversionException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 106
    :cond_1
    sget-object p1, Lorg/apache/commons/beanutils/converters/LongArrayConverter;->MODEL:[J

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-ne p1, v0, :cond_2

    return-object p2

    .line 111
    :cond_2
    sget-object p1, Lorg/apache/commons/beanutils/converters/LongArrayConverter;->strings:[Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    if-ne p1, v0, :cond_5

    .line 113
    :try_start_0
    move-object p1, p2

    check-cast p1, [Ljava/lang/String;

    check-cast p1, [Ljava/lang/String;

    .line 114
    array-length v0, p1

    new-array v0, v0, [J

    .line 115
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_3

    .line 116
    aget-object v2, p1, v1

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    aput-wide v2, v0, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-object v0

    :catch_0
    move-exception p1

    .line 120
    iget-boolean v0, p0, Lorg/apache/commons/beanutils/converters/LongArrayConverter;->useDefault:Z

    if-eqz v0, :cond_4

    .line 121
    iget-object p1, p0, Lorg/apache/commons/beanutils/converters/LongArrayConverter;->defaultValue:Ljava/lang/Object;

    return-object p1

    .line 123
    :cond_4
    new-instance v0, Lorg/apache/commons/beanutils/ConversionException;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2, p1}, Lorg/apache/commons/beanutils/ConversionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 131
    :cond_5
    :try_start_1
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/beanutils/converters/LongArrayConverter;->parseElements(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 132
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v2, v0, [J

    :goto_1
    if-ge v1, v0, :cond_6

    .line 134
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    aput-wide v3, v2, v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_6
    return-object v2

    :catch_1
    move-exception p1

    .line 138
    iget-boolean v0, p0, Lorg/apache/commons/beanutils/converters/LongArrayConverter;->useDefault:Z

    if-eqz v0, :cond_7

    .line 139
    iget-object p1, p0, Lorg/apache/commons/beanutils/converters/LongArrayConverter;->defaultValue:Ljava/lang/Object;

    return-object p1

    .line 141
    :cond_7
    new-instance v0, Lorg/apache/commons/beanutils/ConversionException;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2, p1}, Lorg/apache/commons/beanutils/ConversionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
