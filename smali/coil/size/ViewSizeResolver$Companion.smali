.class public final Lcoil/size/ViewSizeResolver$Companion;
.super Ljava/lang/Object;
.source "ViewSizeResolver.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcoil/size/ViewSizeResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J2\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u0002H\u00050\u0004\"\u0008\u0008\u0001\u0010\u0005*\u00020\u00062\u0006\u0010\u0007\u001a\u0002H\u00052\u0008\u0008\u0002\u0010\u0008\u001a\u00020\tH\u0087\u0002\u00a2\u0006\u0004\u0008\n\u0010\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcoil/size/ViewSizeResolver$Companion;",
        "",
        "()V",
        "invoke",
        "Lcoil/size/ViewSizeResolver;",
        "T",
        "Landroid/view/View;",
        "view",
        "subtractPadding",
        "",
        "create",
        "(Landroid/view/View;Z)Lcoil/size/ViewSizeResolver;",
        "coil-base_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field static final synthetic $$INSTANCE:Lcoil/size/ViewSizeResolver$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    new-instance v0, Lcoil/size/ViewSizeResolver$Companion;

    invoke-direct {v0}, Lcoil/size/ViewSizeResolver$Companion;-><init>()V

    sput-object v0, Lcoil/size/ViewSizeResolver$Companion;->$$INSTANCE:Lcoil/size/ViewSizeResolver$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic create$default(Lcoil/size/ViewSizeResolver$Companion;Landroid/view/View;ZILjava/lang/Object;)Lcoil/size/ViewSizeResolver;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x1

    .line 24
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcoil/size/ViewSizeResolver$Companion;->create(Landroid/view/View;Z)Lcoil/size/ViewSizeResolver;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final create(Landroid/view/View;)Lcoil/size/ViewSizeResolver;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(TT;)",
            "Lcoil/size/ViewSizeResolver<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p0, p1, v0, v1, v2}, Lcoil/size/ViewSizeResolver$Companion;->create$default(Lcoil/size/ViewSizeResolver$Companion;Landroid/view/View;ZILjava/lang/Object;)Lcoil/size/ViewSizeResolver;

    move-result-object p1

    return-object p1
.end method

.method public final create(Landroid/view/View;Z)Lcoil/size/ViewSizeResolver;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(TT;Z)",
            "Lcoil/size/ViewSizeResolver<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    new-instance v0, Lcoil/size/RealViewSizeResolver;

    invoke-direct {v0, p1, p2}, Lcoil/size/RealViewSizeResolver;-><init>(Landroid/view/View;Z)V

    check-cast v0, Lcoil/size/ViewSizeResolver;

    return-object v0
.end method
