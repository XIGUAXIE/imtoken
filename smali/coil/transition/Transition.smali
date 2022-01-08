.class public interface abstract Lcoil/transition/Transition;
.super Ljava/lang/Object;
.source "Transition.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcoil/transition/Transition$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008g\u0018\u0000 \t2\u00020\u0001:\u0001\tJ!\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u00a7@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0008\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\n"
    }
    d2 = {
        "Lcoil/transition/Transition;",
        "",
        "transition",
        "",
        "target",
        "Lcoil/transition/TransitionTarget;",
        "result",
        "Lcoil/request/ImageResult;",
        "(Lcoil/transition/TransitionTarget;Lcoil/request/ImageResult;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
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
.field public static final Companion:Lcoil/transition/Transition$Companion;

.field public static final NONE:Lcoil/transition/Transition;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcoil/transition/Transition$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcoil/transition/Transition$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcoil/transition/Transition;->Companion:Lcoil/transition/Transition$Companion;

    .line 34
    sget-object v0, Lcoil/transition/NoneTransition;->INSTANCE:Lcoil/transition/NoneTransition;

    check-cast v0, Lcoil/transition/Transition;

    sput-object v0, Lcoil/transition/Transition;->NONE:Lcoil/transition/Transition;

    return-void
.end method


# virtual methods
.method public abstract transition(Lcoil/transition/TransitionTarget;Lcoil/request/ImageResult;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcoil/transition/TransitionTarget;",
            "Lcoil/request/ImageResult;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method
