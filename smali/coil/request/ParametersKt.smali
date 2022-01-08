.class public final Lcoil/request/ParametersKt;
.super Ljava/lang/Object;
.source "Parameters.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\u001a\r\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u0086\u0008\u001a\u0017\u0010\u0003\u001a\u0004\u0018\u00010\u0004*\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0006H\u0086\n\u001a\r\u0010\u0007\u001a\u00020\u0008*\u00020\u0002H\u0086\u0008\u00a8\u0006\t"
    }
    d2 = {
        "count",
        "",
        "Lcoil/request/Parameters;",
        "get",
        "",
        "key",
        "",
        "isNotEmpty",
        "",
        "coil-base_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# direct methods
.method public static final count(Lcoil/request/Parameters;)I
    .locals 1

    const-string v0, "$this$count"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    invoke-virtual {p0}, Lcoil/request/Parameters;->size()I

    move-result p0

    return p0
.end method

.method public static final get(Lcoil/request/Parameters;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    const-string v0, "$this$get"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    invoke-virtual {p0, p1}, Lcoil/request/Parameters;->value(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final isNotEmpty(Lcoil/request/Parameters;)Z
    .locals 1

    const-string v0, "$this$isNotEmpty"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    invoke-virtual {p0}, Lcoil/request/Parameters;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method
