.class public interface abstract Lcoil/EventListener$Factory;
.super Ljava/lang/Object;
.source "EventListener.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcoil/EventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Factory"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcoil/EventListener$Factory$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00e6\u0080\u0001\u0018\u0000 \u00062\u00020\u0001:\u0001\u0006J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcoil/EventListener$Factory;",
        "",
        "create",
        "Lcoil/EventListener;",
        "request",
        "Lcoil/request/ImageRequest;",
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
.field public static final Companion:Lcoil/EventListener$Factory$Companion;

.field public static final NONE:Lcoil/EventListener$Factory;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcoil/EventListener$Factory$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcoil/EventListener$Factory$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcoil/EventListener$Factory;->Companion:Lcoil/EventListener$Factory$Companion;

    .line 174
    sget-object v1, Lcoil/EventListener;->NONE:Lcoil/EventListener;

    invoke-virtual {v0, v1}, Lcoil/EventListener$Factory$Companion;->create(Lcoil/EventListener;)Lcoil/EventListener$Factory;

    move-result-object v0

    sput-object v0, Lcoil/EventListener$Factory;->NONE:Lcoil/EventListener$Factory;

    return-void
.end method


# virtual methods
.method public abstract create(Lcoil/request/ImageRequest;)Lcoil/EventListener;
.end method
