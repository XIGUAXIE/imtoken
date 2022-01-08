.class public final Lcom/helpscout/common/extensions/BooleanExtensionsKt;
.super Ljava/lang/Object;
.source "BooleanExtensions.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\u001a\u0011\u0010\u0000\u001a\u00020\u0001*\u0004\u0018\u00010\u0001\u00a2\u0006\u0002\u0010\u0002\u001a\u0011\u0010\u0003\u001a\u00020\u0001*\u0004\u0018\u00010\u0001\u00a2\u0006\u0002\u0010\u0002\u001a\u0011\u0010\u0004\u001a\u00020\u0001*\u0004\u0018\u00010\u0001\u00a2\u0006\u0002\u0010\u0002\u001a\u0011\u0010\u0005\u001a\u00020\u0001*\u0004\u0018\u00010\u0001\u00a2\u0006\u0002\u0010\u0002\u00a8\u0006\u0006"
    }
    d2 = {
        "isFalse",
        "",
        "(Ljava/lang/Boolean;)Z",
        "isTrue",
        "orFalse",
        "orTrue",
        "kotlin-common"
    }
    k = 0x2
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# direct methods
.method public static final isFalse(Ljava/lang/Boolean;)Z
    .locals 1

    const/4 v0, 0x0

    .line 14
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static final isTrue(Ljava/lang/Boolean;)Z
    .locals 1

    const/4 v0, 0x1

    .line 12
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static final orFalse(Ljava/lang/Boolean;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 8
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final orTrue(Ljava/lang/Boolean;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 10
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0
.end method
