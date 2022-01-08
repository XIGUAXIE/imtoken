.class public interface abstract Lcoil/size/SizeResolver;
.super Ljava/lang/Object;
.source "SizeResolver.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcoil/size/SizeResolver$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008f\u0018\u0000 \u00052\u00020\u0001:\u0001\u0005J\u0011\u0010\u0002\u001a\u00020\u0003H\u00a7@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0004\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcoil/size/SizeResolver;",
        "",
        "size",
        "Lcoil/size/Size;",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "Companion",
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
.field public static final Companion:Lcoil/size/SizeResolver$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcoil/size/SizeResolver$Companion;->$$INSTANCE:Lcoil/size/SizeResolver$Companion;

    sput-object v0, Lcoil/size/SizeResolver;->Companion:Lcoil/size/SizeResolver$Companion;

    return-void
.end method


# virtual methods
.method public abstract size(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcoil/size/Size;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method
