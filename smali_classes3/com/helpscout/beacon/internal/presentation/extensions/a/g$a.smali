.class public final Lcom/helpscout/beacon/internal/presentation/extensions/a/g$a;
.super Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpscout/beacon/internal/presentation/extensions/a/g;->a(Landroid/widget/ImageView;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;

.field final synthetic b:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;Landroid/widget/ImageView;Z)V
    .locals 0

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/extensions/a/g$a;->a:Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;

    iput-object p2, p0, Lcom/helpscout/beacon/internal/presentation/extensions/a/g$a;->b:Landroid/widget/ImageView;

    invoke-direct {p0}, Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    iget-object p1, p0, Lcom/helpscout/beacon/internal/presentation/extensions/a/g$a;->b:Landroid/widget/ImageView;

    new-instance v0, Lcom/helpscout/beacon/internal/presentation/extensions/a/g$a$a;

    iget-object v1, p0, Lcom/helpscout/beacon/internal/presentation/extensions/a/g$a;->a:Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;

    invoke-direct {v0, v1}, Lcom/helpscout/beacon/internal/presentation/extensions/a/g$a$a;-><init>(Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;)V

    new-instance v1, Lcom/helpscout/beacon/internal/presentation/extensions/a/f;

    invoke-direct {v1, v0}, Lcom/helpscout/beacon/internal/presentation/extensions/a/f;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
