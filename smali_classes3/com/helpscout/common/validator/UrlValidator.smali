.class public final Lcom/helpscout/common/validator/UrlValidator;
.super Ljava/lang/Object;
.source "UrlValidator.kt"

# interfaces
.implements Lcom/helpscout/common/validator/Validator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/helpscout/common/validator/Validator<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUrlValidator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UrlValidator.kt\ncom/helpscout/common/validator/UrlValidator\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,20:1\n1#2:21\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0011\u0012\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0002\u0010\u0005J\u0010\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u0002H\u0016R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0006\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/helpscout/common/validator/UrlValidator;",
        "Lcom/helpscout/common/validator/Validator;",
        "",
        "maxLength",
        "",
        "(Ljava/lang/Integer;)V",
        "Ljava/lang/Integer;",
        "isValid",
        "",
        "item",
        "kotlin-common"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field private final maxLength:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/helpscout/common/validator/UrlValidator;-><init>(Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/helpscout/common/validator/UrlValidator;->maxLength:Ljava/lang/Integer;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 11
    check-cast p1, Ljava/lang/Integer;

    :cond_0
    invoke-direct {p0, p1}, Lcom/helpscout/common/validator/UrlValidator;-><init>(Ljava/lang/Integer;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic isValid(Ljava/lang/Object;)Z
    .locals 0

    .line 11
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/helpscout/common/validator/UrlValidator;->isValid(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public isValid(Ljava/lang/String;)Z
    .locals 4

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    iget-object v0, p0, Lcom/helpscout/common/validator/UrlValidator;->maxLength:Ljava/lang/Integer;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p1, v0, v1, v2, v3}, Lcom/helpscout/common/extensions/StringExtensionsKt;->takeIfShorterThan$default(Ljava/lang/String;IZILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_1

    .line 17
    invoke-static {}, Lorg/apache/commons/validator/routines/UrlValidator;->getInstance()Lorg/apache/commons/validator/routines/UrlValidator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/commons/validator/routines/UrlValidator;->isValid(Ljava/lang/String;)Z

    move-result v1

    :cond_1
    return v1
.end method
