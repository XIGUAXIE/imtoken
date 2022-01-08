.class public Lorg/apache/commons/validator/CreditCardValidator;
.super Ljava/lang/Object;
.source "CreditCardValidator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/validator/CreditCardValidator$Mastercard;,
        Lorg/apache/commons/validator/CreditCardValidator$Discover;,
        Lorg/apache/commons/validator/CreditCardValidator$Amex;,
        Lorg/apache/commons/validator/CreditCardValidator$Visa;,
        Lorg/apache/commons/validator/CreditCardValidator$CreditCardType;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final AMEX:I = 0x1

.field public static final DISCOVER:I = 0x8

.field public static final MASTERCARD:I = 0x4

.field public static final NONE:I = 0x0

.field public static final VISA:I = 0x2


# instance fields
.field private final cardTypes:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lorg/apache/commons/validator/CreditCardValidator$CreditCardType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0xf

    .line 104
    invoke-direct {p0, v0}, Lorg/apache/commons/validator/CreditCardValidator;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 4

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/validator/CreditCardValidator;->cardTypes:Ljava/util/Collection;

    .line 116
    new-instance v0, Lorg/apache/commons/validator/util/Flags;

    int-to-long v1, p1

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/validator/util/Flags;-><init>(J)V

    const-wide/16 v1, 0x2

    .line 117
    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/validator/util/Flags;->isOn(J)Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 118
    iget-object p1, p0, Lorg/apache/commons/validator/CreditCardValidator;->cardTypes:Ljava/util/Collection;

    new-instance v2, Lorg/apache/commons/validator/CreditCardValidator$Visa;

    invoke-direct {v2, v1}, Lorg/apache/commons/validator/CreditCardValidator$Visa;-><init>(Lorg/apache/commons/validator/CreditCardValidator$1;)V

    invoke-interface {p1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_0
    const-wide/16 v2, 0x1

    .line 121
    invoke-virtual {v0, v2, v3}, Lorg/apache/commons/validator/util/Flags;->isOn(J)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 122
    iget-object p1, p0, Lorg/apache/commons/validator/CreditCardValidator;->cardTypes:Ljava/util/Collection;

    new-instance v2, Lorg/apache/commons/validator/CreditCardValidator$Amex;

    invoke-direct {v2, v1}, Lorg/apache/commons/validator/CreditCardValidator$Amex;-><init>(Lorg/apache/commons/validator/CreditCardValidator$1;)V

    invoke-interface {p1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_1
    const-wide/16 v2, 0x4

    .line 125
    invoke-virtual {v0, v2, v3}, Lorg/apache/commons/validator/util/Flags;->isOn(J)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 126
    iget-object p1, p0, Lorg/apache/commons/validator/CreditCardValidator;->cardTypes:Ljava/util/Collection;

    new-instance v2, Lorg/apache/commons/validator/CreditCardValidator$Mastercard;

    invoke-direct {v2, v1}, Lorg/apache/commons/validator/CreditCardValidator$Mastercard;-><init>(Lorg/apache/commons/validator/CreditCardValidator$1;)V

    invoke-interface {p1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_2
    const-wide/16 v2, 0x8

    .line 129
    invoke-virtual {v0, v2, v3}, Lorg/apache/commons/validator/util/Flags;->isOn(J)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 130
    iget-object p1, p0, Lorg/apache/commons/validator/CreditCardValidator;->cardTypes:Ljava/util/Collection;

    new-instance v0, Lorg/apache/commons/validator/CreditCardValidator$Discover;

    invoke-direct {v0, v1}, Lorg/apache/commons/validator/CreditCardValidator$Discover;-><init>(Lorg/apache/commons/validator/CreditCardValidator$1;)V

    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_3
    return-void
.end method


# virtual methods
.method public addAllowedCardType(Lorg/apache/commons/validator/CreditCardValidator$CreditCardType;)V
    .locals 1

    .line 165
    iget-object v0, p0, Lorg/apache/commons/validator/CreditCardValidator;->cardTypes:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public isValid(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 140
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xd

    if-lt v1, v2, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x13

    if-le v1, v2, :cond_0

    goto :goto_0

    .line 144
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/commons/validator/CreditCardValidator;->luhnCheck(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    .line 148
    :cond_1
    iget-object v1, p0, Lorg/apache/commons/validator/CreditCardValidator;->cardTypes:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 149
    check-cast v2, Lorg/apache/commons/validator/CreditCardValidator$CreditCardType;

    .line 150
    invoke-interface {v2, p1}, Lorg/apache/commons/validator/CreditCardValidator$CreditCardType;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_3
    :goto_0
    return v0
.end method

.method protected luhnCheck(Ljava/lang/String;)Z
    .locals 10

    .line 175
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    and-int/lit8 v1, v0, 0x1

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    move-wide v6, v2

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v0, :cond_1

    .line 181
    :try_start_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit8 v9, v5, 0x1

    xor-int/2addr v9, v1

    if-nez v9, :cond_0

    mul-int/lit8 v8, v8, 0x2

    const/16 v9, 0x9

    if-le v8, v9, :cond_0

    add-int/lit8 v8, v8, -0x9

    :cond_0
    int-to-long v8, v8

    add-long/2addr v6, v8

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :catch_0
    return v4

    :cond_1
    cmp-long p1, v6, v2

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    const-wide/16 v0, 0xa

    .line 195
    rem-long/2addr v6, v0

    cmp-long p1, v6, v2

    if-nez p1, :cond_3

    const/4 v4, 0x1

    :cond_3
    :goto_1
    return v4
.end method
