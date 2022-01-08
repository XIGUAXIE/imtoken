.class public interface abstract Lcoil/size/ViewSizeResolver;
.super Ljava/lang/Object;
.source "ViewSizeResolver.kt"

# interfaces
.implements Lcoil/size/SizeResolver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcoil/size/ViewSizeResolver$DefaultImpls;,
        Lcoil/size/ViewSizeResolver$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/View;",
        ">",
        "Ljava/lang/Object;",
        "Lcoil/size/SizeResolver;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008f\u0018\u0000 \u001d*\u0008\u0008\u0000\u0010\u0001*\u00020\u00022\u00020\u0003:\u0001\u001dJ(\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000e\u001a\u00020\u000c2\u0006\u0010\u000f\u001a\u00020\u000c2\u0006\u0010\u0010\u001a\u00020\u0005H\u0002J\u0008\u0010\u0011\u001a\u00020\u000cH\u0002J\n\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0002J\u0008\u0010\u0014\u001a\u00020\u000cH\u0002J\u0011\u0010\u0015\u001a\u00020\u0016H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0017J\u0014\u0010\u0018\u001a\u00020\u0019*\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001cH\u0002R\u0014\u0010\u0004\u001a\u00020\u00058VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0006\u0010\u0007R\u0012\u0010\u0008\u001a\u00028\u0000X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\t\u0010\n\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcoil/size/ViewSizeResolver;",
        "T",
        "Landroid/view/View;",
        "Lcoil/size/SizeResolver;",
        "subtractPadding",
        "",
        "getSubtractPadding",
        "()Z",
        "view",
        "getView",
        "()Landroid/view/View;",
        "getDimension",
        "",
        "paramSize",
        "viewSize",
        "paddingSize",
        "isWidth",
        "getHeight",
        "getSize",
        "Lcoil/size/PixelSize;",
        "getWidth",
        "size",
        "Lcoil/size/Size;",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "removePreDrawListenerSafe",
        "",
        "Landroid/view/ViewTreeObserver;",
        "victim",
        "Landroid/view/ViewTreeObserver$OnPreDrawListener;",
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
.field public static final Companion:Lcoil/size/ViewSizeResolver$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcoil/size/ViewSizeResolver$Companion;->$$INSTANCE:Lcoil/size/ViewSizeResolver$Companion;

    sput-object v0, Lcoil/size/ViewSizeResolver;->Companion:Lcoil/size/ViewSizeResolver$Companion;

    return-void
.end method


# virtual methods
.method public abstract getSubtractPadding()Z
.end method

.method public abstract getView()Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

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
