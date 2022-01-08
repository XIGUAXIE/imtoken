.class public final Lorg/apache/commons/beanutils/converters/BooleanArrayConverter;
.super Lorg/apache/commons/beanutils/converters/AbstractArrayConverter;
.source "BooleanArrayConverter.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final DEFAULT_CONVERTER:Lorg/apache/commons/beanutils/converters/BooleanConverter;

.field public static final MODEL:Ljava/lang/Class;


# instance fields
.field protected final booleanConverter:Lorg/apache/commons/beanutils/converters/BooleanConverter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Z

    .line 112
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/beanutils/converters/BooleanArrayConverter;->MODEL:Ljava/lang/Class;

    .line 119
    new-instance v0, Lorg/apache/commons/beanutils/converters/BooleanConverter;

    invoke-direct {v0}, Lorg/apache/commons/beanutils/converters/BooleanConverter;-><init>()V

    sput-object v0, Lorg/apache/commons/beanutils/converters/BooleanArrayConverter;->DEFAULT_CONVERTER:Lorg/apache/commons/beanutils/converters/BooleanConverter;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 58
    invoke-direct {p0}, Lorg/apache/commons/beanutils/converters/AbstractArrayConverter;-><init>()V

    .line 59
    sget-object v0, Lorg/apache/commons/beanutils/converters/BooleanArrayConverter;->DEFAULT_CONVERTER:Lorg/apache/commons/beanutils/converters/BooleanConverter;

    iput-object v0, p0, Lorg/apache/commons/beanutils/converters/BooleanArrayConverter;->booleanConverter:Lorg/apache/commons/beanutils/converters/BooleanConverter;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 75
    invoke-direct {p0, p1}, Lorg/apache/commons/beanutils/converters/AbstractArrayConverter;-><init>(Ljava/lang/Object;)V

    .line 76
    sget-object p1, Lorg/apache/commons/beanutils/converters/BooleanArrayConverter;->DEFAULT_CONVERTER:Lorg/apache/commons/beanutils/converters/BooleanConverter;

    iput-object p1, p0, Lorg/apache/commons/beanutils/converters/BooleanArrayConverter;->booleanConverter:Lorg/apache/commons/beanutils/converters/BooleanConverter;

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/beanutils/converters/BooleanConverter;Ljava/lang/Object;)V
    .locals 0

    .line 100
    invoke-direct {p0, p2}, Lorg/apache/commons/beanutils/converters/AbstractArrayConverter;-><init>(Ljava/lang/Object;)V

    .line 101
    iput-object p1, p0, Lorg/apache/commons/beanutils/converters/BooleanArrayConverter;->booleanConverter:Lorg/apache/commons/beanutils/converters/BooleanConverter;

    return-void
.end method


# virtual methods
.method public convert(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    if-nez p2, :cond_1

    .line 187
    iget-boolean p1, p0, Lorg/apache/commons/beanutils/converters/BooleanArrayConverter;->useDefault:Z

    if-eqz p1, :cond_0

    .line 188
    iget-object p1, p0, Lorg/apache/commons/beanutils/converters/BooleanArrayConverter;->defaultValue:Ljava/lang/Object;

    return-object p1

    .line 190
    :cond_0
    new-instance p1, Lorg/apache/commons/beanutils/ConversionException;

    const-string p2, "No value specified"

    invoke-direct {p1, p2}, Lorg/apache/commons/beanutils/ConversionException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 195
    :cond_1
    sget-object p1, Lorg/apache/commons/beanutils/converters/BooleanArrayConverter;->MODEL:Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-ne p1, v0, :cond_2

    return-object p2

    .line 203
    :cond_2
    sget-object p1, Lorg/apache/commons/beanutils/converters/BooleanArrayConverter;->strings:[Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    if-ne p1, v0, :cond_5

    .line 205
    :try_start_0
    move-object p1, p2

    check-cast p1, [Ljava/lang/String;

    check-cast p1, [Ljava/lang/String;

    .line 206
    array-length v0, p1

    new-array v0, v0, [Z

    .line 207
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_3

    .line 208
    aget-object v2, p1, v1

    .line 209
    iget-object v3, p0, Lorg/apache/commons/beanutils/converters/BooleanArrayConverter;->booleanConverter:Lorg/apache/commons/beanutils/converters/BooleanConverter;

    const-class v4, Ljava/lang/Boolean;

    invoke-virtual {v3, v4, v2}, Lorg/apache/commons/beanutils/converters/BooleanConverter;->convert(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 210
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    aput-boolean v2, v0, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-object v0

    :catch_0
    move-exception p1

    .line 214
    iget-boolean v0, p0, Lorg/apache/commons/beanutils/converters/BooleanArrayConverter;->useDefault:Z

    if-eqz v0, :cond_4

    .line 215
    iget-object p1, p0, Lorg/apache/commons/beanutils/converters/BooleanArrayConverter;->defaultValue:Ljava/lang/Object;

    return-object p1

    .line 217
    :cond_4
    new-instance v0, Lorg/apache/commons/beanutils/ConversionException;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2, p1}, Lorg/apache/commons/beanutils/ConversionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 227
    :cond_5
    :try_start_1
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/beanutils/converters/BooleanArrayConverter;->parseElements(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 228
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v2, v0, [Z

    :goto_1
    if-ge v1, v0, :cond_6

    .line 230
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 231
    iget-object v4, p0, Lorg/apache/commons/beanutils/converters/BooleanArrayConverter;->booleanConverter:Lorg/apache/commons/beanutils/converters/BooleanConverter;

    const-class v5, Ljava/lang/Boolean;

    invoke-virtual {v4, v5, v3}, Lorg/apache/commons/beanutils/converters/BooleanConverter;->convert(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 232
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    aput-boolean v3, v2, v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_6
    return-object v2

    :catch_1
    move-exception p1

    .line 236
    iget-boolean v0, p0, Lorg/apache/commons/beanutils/converters/BooleanArrayConverter;->useDefault:Z

    if-eqz v0, :cond_7

    .line 237
    iget-object p1, p0, Lorg/apache/commons/beanutils/converters/BooleanArrayConverter;->defaultValue:Ljava/lang/Object;

    return-object p1

    .line 239
    :cond_7
    new-instance v0, Lorg/apache/commons/beanutils/ConversionException;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2, p1}, Lorg/apache/commons/beanutils/ConversionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
