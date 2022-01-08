.class public Lorg/apache/commons/beanutils/LazyDynaBean;
.super Ljava/lang/Object;
.source "LazyDynaBean.java"

# interfaces
.implements Lorg/apache/commons/beanutils/DynaBean;
.implements Ljava/io/Serializable;


# static fields
.field protected static final BigDecimal_ZERO:Ljava/math/BigDecimal;

.field protected static final BigInteger_ZERO:Ljava/math/BigInteger;

.field protected static final Byte_ZERO:Ljava/lang/Byte;

.field protected static final Character_SPACE:Ljava/lang/Character;

.field protected static final Double_ZERO:Ljava/lang/Double;

.field protected static final Float_ZERO:Ljava/lang/Float;

.field protected static final Integer_ZERO:Ljava/lang/Integer;

.field protected static final Long_ZERO:Ljava/lang/Long;

.field protected static final Short_ZERO:Ljava/lang/Short;


# instance fields
.field protected dynaClass:Lorg/apache/commons/beanutils/MutableDynaClass;

.field private transient logger:Lorg/apache/commons/logging/Log;

.field private transient mapDecorator:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected values:Ljava/util/Map;
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
.method static constructor <clinit>()V
    .locals 3

    .line 123
    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "0"

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/commons/beanutils/LazyDynaBean;->BigInteger_ZERO:Ljava/math/BigInteger;

    .line 125
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/commons/beanutils/LazyDynaBean;->BigDecimal_ZERO:Ljava/math/BigDecimal;

    .line 127
    new-instance v0, Ljava/lang/Character;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/Character;-><init>(C)V

    sput-object v0, Lorg/apache/commons/beanutils/LazyDynaBean;->Character_SPACE:Ljava/lang/Character;

    .line 129
    new-instance v0, Ljava/lang/Byte;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/Byte;-><init>(B)V

    sput-object v0, Lorg/apache/commons/beanutils/LazyDynaBean;->Byte_ZERO:Ljava/lang/Byte;

    .line 131
    new-instance v0, Ljava/lang/Short;

    invoke-direct {v0, v1}, Ljava/lang/Short;-><init>(S)V

    sput-object v0, Lorg/apache/commons/beanutils/LazyDynaBean;->Short_ZERO:Ljava/lang/Short;

    .line 133
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, Lorg/apache/commons/beanutils/LazyDynaBean;->Integer_ZERO:Ljava/lang/Integer;

    .line 135
    new-instance v0, Ljava/lang/Long;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V

    sput-object v0, Lorg/apache/commons/beanutils/LazyDynaBean;->Long_ZERO:Ljava/lang/Long;

    .line 137
    new-instance v0, Ljava/lang/Float;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/Float;-><init>(F)V

    sput-object v0, Lorg/apache/commons/beanutils/LazyDynaBean;->Float_ZERO:Ljava/lang/Float;

    .line 139
    new-instance v0, Ljava/lang/Double;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Double;-><init>(D)V

    sput-object v0, Lorg/apache/commons/beanutils/LazyDynaBean;->Double_ZERO:Ljava/lang/Double;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 163
    new-instance v0, Lorg/apache/commons/beanutils/LazyDynaClass;

    invoke-direct {v0}, Lorg/apache/commons/beanutils/LazyDynaClass;-><init>()V

    invoke-direct {p0, v0}, Lorg/apache/commons/beanutils/LazyDynaBean;-><init>(Lorg/apache/commons/beanutils/DynaClass;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 172
    new-instance v0, Lorg/apache/commons/beanutils/LazyDynaClass;

    invoke-direct {v0, p1}, Lorg/apache/commons/beanutils/LazyDynaClass;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/apache/commons/beanutils/LazyDynaBean;-><init>(Lorg/apache/commons/beanutils/DynaClass;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/beanutils/DynaClass;)V
    .locals 2

    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    const-class v0, Lorg/apache/commons/beanutils/LazyDynaBean;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/beanutils/LazyDynaBean;->logger:Lorg/apache/commons/logging/Log;

    .line 184
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/LazyDynaBean;->newMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/beanutils/LazyDynaBean;->values:Ljava/util/Map;

    .line 186
    instance-of v0, p1, Lorg/apache/commons/beanutils/MutableDynaClass;

    if-eqz v0, :cond_0

    .line 187
    check-cast p1, Lorg/apache/commons/beanutils/MutableDynaClass;

    iput-object p1, p0, Lorg/apache/commons/beanutils/LazyDynaBean;->dynaClass:Lorg/apache/commons/beanutils/MutableDynaClass;

    goto :goto_0

    .line 189
    :cond_0
    new-instance v0, Lorg/apache/commons/beanutils/LazyDynaClass;

    invoke-interface {p1}, Lorg/apache/commons/beanutils/DynaClass;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lorg/apache/commons/beanutils/DynaClass;->getDynaProperties()[Lorg/apache/commons/beanutils/DynaProperty;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lorg/apache/commons/beanutils/LazyDynaClass;-><init>(Ljava/lang/String;[Lorg/apache/commons/beanutils/DynaProperty;)V

    iput-object v0, p0, Lorg/apache/commons/beanutils/LazyDynaBean;->dynaClass:Lorg/apache/commons/beanutils/MutableDynaClass;

    :goto_0
    return-void
.end method

.method private logger()Lorg/apache/commons/logging/Log;
    .locals 1

    .line 938
    iget-object v0, p0, Lorg/apache/commons/beanutils/LazyDynaBean;->logger:Lorg/apache/commons/logging/Log;

    if-nez v0, :cond_0

    .line 939
    const-class v0, Lorg/apache/commons/beanutils/LazyDynaBean;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/beanutils/LazyDynaBean;->logger:Lorg/apache/commons/logging/Log;

    .line 941
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/beanutils/LazyDynaBean;->logger:Lorg/apache/commons/logging/Log;

    return-object v0
.end method


# virtual methods
.method public contains(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    if-eqz p1, :cond_2

    .line 267
    iget-object v0, p0, Lorg/apache/commons/beanutils/LazyDynaBean;->values:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 272
    :cond_0
    instance-of v1, p1, Ljava/util/Map;

    if-eqz v1, :cond_1

    .line 273
    check-cast p1, Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    return v0

    .line 264
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No property name specified"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected createDynaBeanProperty(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 768
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    .line 771
    invoke-direct {p0}, Lorg/apache/commons/beanutils/LazyDynaBean;->logger()Lorg/apache/commons/logging/Log;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 772
    invoke-direct {p0}, Lorg/apache/commons/beanutils/LazyDynaBean;->logger()Lorg/apache/commons/logging/Log;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error instantiating DynaBean property of type \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 773
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\' for \'"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 772
    invoke-interface {v1, p1}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected createIndexedProperty(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 693
    invoke-virtual {p0, p1}, Lorg/apache/commons/beanutils/LazyDynaBean;->defaultIndexedProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    .line 695
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 697
    invoke-virtual {p2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p1, p2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    .line 699
    :cond_1
    const-class v0, Ljava/util/List;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    const-string v1, "\' for \'"

    if-eqz v0, :cond_3

    .line 700
    invoke-virtual {p2}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 701
    invoke-virtual {p0, p1}, Lorg/apache/commons/beanutils/LazyDynaBean;->defaultIndexedProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    .line 704
    :cond_2
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object p1

    :catch_0
    move-exception v0

    .line 707
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error instantiating indexed property of type \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 709
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 714
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Non-indexed property of type \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 715
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected createMappedProperty(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 735
    invoke-virtual {p0, p1}, Lorg/apache/commons/beanutils/LazyDynaBean;->defaultMappedProperty(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    goto :goto_0

    .line 737
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 739
    invoke-virtual {p0, p1}, Lorg/apache/commons/beanutils/LazyDynaBean;->defaultMappedProperty(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    goto :goto_0

    .line 741
    :cond_1
    const-class v0, Ljava/util/Map;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    const-string v1, "\' for \'"

    if-eqz v0, :cond_2

    .line 743
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object p1

    :catch_0
    move-exception v0

    .line 746
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error instantiating mapped property of type \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 748
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 752
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Non-mapped property of type \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 753
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected createNumberProperty(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method protected createOtherProperty(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 829
    const-class v0, Ljava/lang/Object;

    const/4 v1, 0x0

    if-eq p2, v0, :cond_1

    const-class v0, Ljava/lang/String;

    if-eq p2, v0, :cond_1

    const-class v0, Ljava/lang/Boolean;

    if-eq p2, v0, :cond_1

    const-class v0, Ljava/lang/Character;

    if-eq p2, v0, :cond_1

    const-class v0, Ljava/util/Date;

    .line 833
    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 840
    :cond_0
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    .line 843
    invoke-direct {p0}, Lorg/apache/commons/beanutils/LazyDynaBean;->logger()Lorg/apache/commons/logging/Log;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 844
    invoke-direct {p0}, Lorg/apache/commons/beanutils/LazyDynaBean;->logger()Lorg/apache/commons/logging/Log;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error instantiating property of type \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\' for \'"

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, p1}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-object v1
.end method

.method protected createPrimitiveProperty(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 787
    sget-object p1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p2, p1, :cond_0

    .line 788
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 789
    :cond_0
    sget-object p1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p2, p1, :cond_1

    .line 790
    sget-object p1, Lorg/apache/commons/beanutils/LazyDynaBean;->Integer_ZERO:Ljava/lang/Integer;

    return-object p1

    .line 791
    :cond_1
    sget-object p1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p2, p1, :cond_2

    .line 792
    sget-object p1, Lorg/apache/commons/beanutils/LazyDynaBean;->Long_ZERO:Ljava/lang/Long;

    return-object p1

    .line 793
    :cond_2
    sget-object p1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p2, p1, :cond_3

    .line 794
    sget-object p1, Lorg/apache/commons/beanutils/LazyDynaBean;->Double_ZERO:Ljava/lang/Double;

    return-object p1

    .line 795
    :cond_3
    sget-object p1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p2, p1, :cond_4

    .line 796
    sget-object p1, Lorg/apache/commons/beanutils/LazyDynaBean;->Float_ZERO:Ljava/lang/Float;

    return-object p1

    .line 797
    :cond_4
    sget-object p1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p2, p1, :cond_5

    .line 798
    sget-object p1, Lorg/apache/commons/beanutils/LazyDynaBean;->Byte_ZERO:Ljava/lang/Byte;

    return-object p1

    .line 799
    :cond_5
    sget-object p1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p2, p1, :cond_6

    .line 800
    sget-object p1, Lorg/apache/commons/beanutils/LazyDynaBean;->Short_ZERO:Ljava/lang/Short;

    return-object p1

    .line 801
    :cond_6
    sget-object p1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p2, p1, :cond_7

    .line 802
    sget-object p1, Lorg/apache/commons/beanutils/LazyDynaBean;->Character_SPACE:Ljava/lang/Character;

    return-object p1

    :cond_7
    const/4 p1, 0x0

    return-object p1
.end method

.method protected createProperty(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 656
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-nez v0, :cond_6

    const-class v0, Ljava/util/List;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 660
    :cond_1
    const-class v0, Ljava/util/Map;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 661
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/beanutils/LazyDynaBean;->createMappedProperty(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 664
    :cond_2
    const-class v0, Lorg/apache/commons/beanutils/DynaBean;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 665
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/beanutils/LazyDynaBean;->createDynaBeanProperty(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 668
    :cond_3
    invoke-virtual {p2}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 669
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/beanutils/LazyDynaBean;->createPrimitiveProperty(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 672
    :cond_4
    const-class v0, Ljava/lang/Number;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 673
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/beanutils/LazyDynaBean;->createNumberProperty(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 676
    :cond_5
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/beanutils/LazyDynaBean;->createOtherProperty(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 657
    :cond_6
    :goto_0
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/beanutils/LazyDynaBean;->createIndexedProperty(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected defaultIndexedProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 861
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1
.end method

.method protected defaultMappedProperty(Ljava/lang/String;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 875
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    return-object p1
.end method

.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    if-eqz p1, :cond_3

    .line 297
    iget-object v0, p0, Lorg/apache/commons/beanutils/LazyDynaBean;->values:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 303
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/commons/beanutils/LazyDynaBean;->isDynaProperty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    .line 308
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/beanutils/LazyDynaBean;->dynaClass:Lorg/apache/commons/beanutils/MutableDynaClass;

    invoke-interface {v0, p1}, Lorg/apache/commons/beanutils/MutableDynaClass;->getDynaProperty(Ljava/lang/String;)Lorg/apache/commons/beanutils/DynaProperty;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/beanutils/DynaProperty;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/beanutils/LazyDynaBean;->createProperty(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 311
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/beanutils/LazyDynaBean;->set(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    return-object v0

    .line 293
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "No property name specified"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public get(Ljava/lang/String;I)Ljava/lang/Object;
    .locals 6

    .line 336
    invoke-virtual {p0, p1}, Lorg/apache/commons/beanutils/LazyDynaBean;->isDynaProperty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 337
    invoke-virtual {p0, p1}, Lorg/apache/commons/beanutils/LazyDynaBean;->defaultIndexedProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/beanutils/LazyDynaBean;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 341
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/commons/beanutils/LazyDynaBean;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 344
    iget-object v1, p0, Lorg/apache/commons/beanutils/LazyDynaBean;->dynaClass:Lorg/apache/commons/beanutils/MutableDynaClass;

    invoke-interface {v1, p1}, Lorg/apache/commons/beanutils/MutableDynaClass;->getDynaProperty(Ljava/lang/String;)Lorg/apache/commons/beanutils/DynaProperty;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/beanutils/DynaProperty;->isIndexed()Z

    move-result v1

    const-string v2, "]\' "

    const-string v3, "["

    const-string v4, "Non-indexed property for \'"

    if-eqz v1, :cond_3

    .line 351
    invoke-virtual {p0, p1, v0, p2}, Lorg/apache/commons/beanutils/LazyDynaBean;->growIndexedProperty(Ljava/lang/String;Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    .line 354
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 355
    invoke-static {v0, p2}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 356
    :cond_1
    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_2

    .line 357
    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 359
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 345
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lorg/apache/commons/beanutils/LazyDynaBean;->dynaClass:Lorg/apache/commons/beanutils/MutableDynaClass;

    .line 347
    invoke-interface {p2, p1}, Lorg/apache/commons/beanutils/MutableDynaClass;->getDynaProperty(Ljava/lang/String;)Lorg/apache/commons/beanutils/DynaProperty;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/commons/beanutils/DynaProperty;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 5

    .line 382
    invoke-virtual {p0, p1}, Lorg/apache/commons/beanutils/LazyDynaBean;->isDynaProperty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 383
    invoke-virtual {p0, p1}, Lorg/apache/commons/beanutils/LazyDynaBean;->defaultMappedProperty(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/beanutils/LazyDynaBean;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 387
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/commons/beanutils/LazyDynaBean;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 390
    iget-object v1, p0, Lorg/apache/commons/beanutils/LazyDynaBean;->dynaClass:Lorg/apache/commons/beanutils/MutableDynaClass;

    invoke-interface {v1, p1}, Lorg/apache/commons/beanutils/MutableDynaClass;->getDynaProperty(Ljava/lang/String;)Lorg/apache/commons/beanutils/DynaProperty;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/beanutils/DynaProperty;->isMapped()Z

    move-result v1

    const-string v2, "("

    const-string v3, "Non-mapped property for \'"

    if-eqz v1, :cond_2

    .line 397
    instance-of v1, v0, Ljava/util/Map;

    if-eqz v1, :cond_1

    .line 398
    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 400
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")\'"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 402
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 391
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ")\' "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lorg/apache/commons/beanutils/LazyDynaBean;->dynaClass:Lorg/apache/commons/beanutils/MutableDynaClass;

    .line 393
    invoke-interface {p2, p1}, Lorg/apache/commons/beanutils/MutableDynaClass;->getDynaProperty(Ljava/lang/String;)Lorg/apache/commons/beanutils/DynaProperty;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/commons/beanutils/DynaProperty;->getType()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDynaClass()Lorg/apache/commons/beanutils/DynaClass;
    .locals 1

    .line 415
    iget-object v0, p0, Lorg/apache/commons/beanutils/LazyDynaBean;->dynaClass:Lorg/apache/commons/beanutils/MutableDynaClass;

    return-object v0
.end method

.method public getMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 208
    iget-object v0, p0, Lorg/apache/commons/beanutils/LazyDynaBean;->mapDecorator:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 209
    new-instance v0, Lorg/apache/commons/beanutils/DynaBeanPropertyMapDecorator;

    invoke-direct {v0, p0}, Lorg/apache/commons/beanutils/DynaBeanPropertyMapDecorator;-><init>(Lorg/apache/commons/beanutils/DynaBean;)V

    iput-object v0, p0, Lorg/apache/commons/beanutils/LazyDynaBean;->mapDecorator:Ljava/util/Map;

    .line 211
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/beanutils/LazyDynaBean;->mapDecorator:Ljava/util/Map;

    return-object v0
.end method

.method protected growIndexedProperty(Ljava/lang/String;Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 6

    .line 606
    instance-of v0, p2, Ljava/util/List;

    const-string v1, "]"

    const-string v2, "["

    if-eqz v0, :cond_1

    .line 611
    move-object v0, p2

    check-cast v0, Ljava/util/List;

    .line 612
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lt p3, v3, :cond_1

    .line 613
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/LazyDynaBean;->getDynaClass()Lorg/apache/commons/beanutils/DynaClass;

    move-result-object v3

    invoke-interface {v3, p1}, Lorg/apache/commons/beanutils/DynaClass;->getDynaProperty(Ljava/lang/String;)Lorg/apache/commons/beanutils/DynaProperty;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/commons/beanutils/DynaProperty;->getContentType()Ljava/lang/Class;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 616
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, v3}, Lorg/apache/commons/beanutils/LazyDynaBean;->createProperty(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    .line 618
    :cond_0
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 624
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 626
    invoke-static {p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    if-lt p3, v0, :cond_3

    .line 628
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v3

    add-int/lit8 p3, p3, 0x1

    .line 629
    invoke-static {v3, p3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p3

    const/4 v4, 0x0

    .line 630
    invoke-static {p2, v4, p3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 632
    invoke-virtual {p0, p1, p3}, Lorg/apache/commons/beanutils/LazyDynaBean;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 633
    invoke-static {p3}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result p2

    :goto_1
    if-ge v0, p2, :cond_2

    .line 635
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, v3}, Lorg/apache/commons/beanutils/LazyDynaBean;->createProperty(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p3, v0, v4}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move-object p2, p3

    :cond_3
    return-object p2
.end method

.method protected isAssignable(Ljava/lang/Class;Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 910
    invoke-virtual {p1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_8

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_0

    const-class v0, Ljava/lang/Boolean;

    if-eq p2, v0, :cond_8

    :cond_0
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_1

    const-class v0, Ljava/lang/Byte;

    if-eq p2, v0, :cond_8

    :cond_1
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_2

    const-class v0, Ljava/lang/Character;

    if-eq p2, v0, :cond_8

    :cond_2
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_3

    const-class v0, Ljava/lang/Double;

    if-eq p2, v0, :cond_8

    :cond_3
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_4

    const-class v0, Ljava/lang/Float;

    if-eq p2, v0, :cond_8

    :cond_4
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_5

    const-class v0, Ljava/lang/Integer;

    if-eq p2, v0, :cond_8

    :cond_5
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_6

    const-class v0, Ljava/lang/Long;

    if-eq p2, v0, :cond_8

    :cond_6
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_7

    const-class p1, Ljava/lang/Short;

    if-ne p2, p1, :cond_7

    goto :goto_0

    :cond_7
    const/4 p1, 0x0

    return p1

    :cond_8
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method protected isDynaProperty(Ljava/lang/String;)Z
    .locals 2

    if-eqz p1, :cond_2

    .line 891
    iget-object v0, p0, Lorg/apache/commons/beanutils/LazyDynaBean;->dynaClass:Lorg/apache/commons/beanutils/MutableDynaClass;

    instance-of v1, v0, Lorg/apache/commons/beanutils/LazyDynaClass;

    if-eqz v1, :cond_0

    .line 892
    check-cast v0, Lorg/apache/commons/beanutils/LazyDynaClass;

    invoke-virtual {v0, p1}, Lorg/apache/commons/beanutils/LazyDynaClass;->isDynaProperty(Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 896
    :cond_0
    invoke-interface {v0, p1}, Lorg/apache/commons/beanutils/MutableDynaClass;->getDynaProperty(Ljava/lang/String;)Lorg/apache/commons/beanutils/DynaProperty;

    move-result-object p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    :goto_0
    return p1

    .line 887
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "No property name specified"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected newMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 931
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0
.end method

.method public remove(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    if-eqz p1, :cond_2

    .line 435
    iget-object v0, p0, Lorg/apache/commons/beanutils/LazyDynaBean;->values:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 440
    :cond_0
    instance-of v1, v0, Ljava/util/Map;

    if-eqz v1, :cond_1

    .line 441
    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 443
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Non-mapped property for \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "("

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")\'"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 445
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 432
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No property name specified"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public set(Ljava/lang/String;ILjava/lang/Object;)V
    .locals 4

    .line 519
    invoke-virtual {p0, p1}, Lorg/apache/commons/beanutils/LazyDynaBean;->isDynaProperty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 520
    invoke-virtual {p0, p1}, Lorg/apache/commons/beanutils/LazyDynaBean;->defaultIndexedProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/beanutils/LazyDynaBean;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 524
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/commons/beanutils/LazyDynaBean;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 527
    iget-object v1, p0, Lorg/apache/commons/beanutils/LazyDynaBean;->dynaClass:Lorg/apache/commons/beanutils/MutableDynaClass;

    invoke-interface {v1, p1}, Lorg/apache/commons/beanutils/MutableDynaClass;->getDynaProperty(Ljava/lang/String;)Lorg/apache/commons/beanutils/DynaProperty;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/beanutils/DynaProperty;->isIndexed()Z

    move-result v1

    const-string v2, "["

    const-string v3, "Non-indexed property for \'"

    if-eqz v1, :cond_3

    .line 534
    invoke-virtual {p0, p1, v0, p2}, Lorg/apache/commons/beanutils/LazyDynaBean;->growIndexedProperty(Ljava/lang/String;Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    .line 537
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 538
    invoke-static {v0, p2, p3}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    goto :goto_0

    .line 539
    :cond_1
    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_2

    .line 543
    check-cast v0, Ljava/util/List;

    .line 544
    invoke-interface {v0, p2, p3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void

    .line 546
    :cond_2
    new-instance p3, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "]\' "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 548
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3

    .line 528
    :cond_3
    new-instance p3, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "]\'"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lorg/apache/commons/beanutils/LazyDynaBean;->dynaClass:Lorg/apache/commons/beanutils/MutableDynaClass;

    .line 530
    invoke-interface {p2, p1}, Lorg/apache/commons/beanutils/MutableDynaClass;->getDynaProperty(Ljava/lang/String;)Lorg/apache/commons/beanutils/DynaProperty;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/commons/beanutils/DynaProperty;->getType()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 5

    .line 466
    invoke-virtual {p0, p1}, Lorg/apache/commons/beanutils/LazyDynaBean;->isDynaProperty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 468
    iget-object v0, p0, Lorg/apache/commons/beanutils/LazyDynaBean;->dynaClass:Lorg/apache/commons/beanutils/MutableDynaClass;

    invoke-interface {v0}, Lorg/apache/commons/beanutils/MutableDynaClass;->isRestricted()Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p2, :cond_0

    .line 473
    iget-object v0, p0, Lorg/apache/commons/beanutils/LazyDynaBean;->dynaClass:Lorg/apache/commons/beanutils/MutableDynaClass;

    invoke-interface {v0, p1}, Lorg/apache/commons/beanutils/MutableDynaClass;->add(Ljava/lang/String;)V

    goto :goto_0

    .line 475
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/beanutils/LazyDynaBean;->dynaClass:Lorg/apache/commons/beanutils/MutableDynaClass;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lorg/apache/commons/beanutils/MutableDynaClass;->add(Ljava/lang/String;Ljava/lang/Class;)V

    goto :goto_0

    .line 469
    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid property name \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' (DynaClass is restricted)"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 480
    :cond_2
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/beanutils/LazyDynaBean;->dynaClass:Lorg/apache/commons/beanutils/MutableDynaClass;

    invoke-interface {v0, p1}, Lorg/apache/commons/beanutils/MutableDynaClass;->getDynaProperty(Ljava/lang/String;)Lorg/apache/commons/beanutils/DynaProperty;

    move-result-object v0

    const-string v1, "\'"

    if-nez p2, :cond_4

    .line 483
    invoke-virtual {v0}, Lorg/apache/commons/beanutils/DynaProperty;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    .line 484
    :cond_3
    new-instance p2, Ljava/lang/NullPointerException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Primitive value for \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 487
    :cond_4
    invoke-virtual {v0}, Lorg/apache/commons/beanutils/DynaProperty;->getType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lorg/apache/commons/beanutils/LazyDynaBean;->isAssignable(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 496
    :goto_1
    iget-object v0, p0, Lorg/apache/commons/beanutils/LazyDynaBean;->values:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 488
    :cond_5
    new-instance v2, Lorg/apache/commons/beanutils/ConversionException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot assign value of type \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 490
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\' to property \'"

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' of type \'"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 492
    invoke-virtual {v0}, Lorg/apache/commons/beanutils/DynaProperty;->getType()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Lorg/apache/commons/beanutils/ConversionException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .line 570
    invoke-virtual {p0, p1}, Lorg/apache/commons/beanutils/LazyDynaBean;->isDynaProperty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 571
    invoke-virtual {p0, p1}, Lorg/apache/commons/beanutils/LazyDynaBean;->defaultMappedProperty(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/beanutils/LazyDynaBean;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 575
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/commons/beanutils/LazyDynaBean;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 578
    iget-object v1, p0, Lorg/apache/commons/beanutils/LazyDynaBean;->dynaClass:Lorg/apache/commons/beanutils/MutableDynaClass;

    invoke-interface {v1, p1}, Lorg/apache/commons/beanutils/MutableDynaClass;->getDynaProperty(Ljava/lang/String;)Lorg/apache/commons/beanutils/DynaProperty;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/beanutils/DynaProperty;->isMapped()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 588
    check-cast v0, Ljava/util/Map;

    .line 589
    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 579
    :cond_1
    new-instance p3, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Non-mapped property for \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ")\'"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lorg/apache/commons/beanutils/LazyDynaBean;->dynaClass:Lorg/apache/commons/beanutils/MutableDynaClass;

    .line 581
    invoke-interface {p2, p1}, Lorg/apache/commons/beanutils/MutableDynaClass;->getDynaProperty(Ljava/lang/String;)Lorg/apache/commons/beanutils/DynaProperty;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/commons/beanutils/DynaProperty;->getType()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3
.end method

.method public size(Ljava/lang/String;)I
    .locals 2

    if-eqz p1, :cond_4

    .line 227
    iget-object v0, p0, Lorg/apache/commons/beanutils/LazyDynaBean;->values:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 232
    :cond_0
    instance-of v1, p1, Ljava/util/Map;

    if-eqz v1, :cond_1

    .line 233
    check-cast p1, Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    return p1

    .line 236
    :cond_1
    instance-of v1, p1, Ljava/util/List;

    if-eqz v1, :cond_2

    .line 237
    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    return p1

    .line 240
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 241
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result p1

    return p1

    :cond_3
    return v0

    .line 224
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "No property name specified"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
