.class Lproguard/ftsafe/i/i;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lproguard/ftsafe/e/i;

.field final synthetic b:Lproguard/ftsafe/i/g;


# direct methods
.method constructor <init>(Lproguard/ftsafe/i/g;Lproguard/ftsafe/e/i;)V
    .locals 0

    iput-object p1, p0, Lproguard/ftsafe/i/i;->b:Lproguard/ftsafe/i/g;

    iput-object p2, p0, Lproguard/ftsafe/i/i;->a:Lproguard/ftsafe/e/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lproguard/ftsafe/i/i;->b:Lproguard/ftsafe/i/g;

    iget-object v0, v0, Lproguard/ftsafe/i/g;->a:Lproguard/ftsafe/i/b;

    invoke-static {v0}, Lproguard/ftsafe/i/b;->e(Lproguard/ftsafe/i/b;)Lproguard/ftsafe/g/f;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lproguard/ftsafe/i/i;->b:Lproguard/ftsafe/i/g;

    iget-object v0, v0, Lproguard/ftsafe/i/g;->a:Lproguard/ftsafe/i/b;

    invoke-static {v0}, Lproguard/ftsafe/i/b;->e(Lproguard/ftsafe/i/b;)Lproguard/ftsafe/g/f;

    move-result-object v0

    iget-object v1, p0, Lproguard/ftsafe/i/i;->a:Lproguard/ftsafe/e/i;

    invoke-interface {v0, v1}, Lproguard/ftsafe/g/f;->a(Lproguard/ftsafe/c/a;)V

    :cond_0
    return-void
.end method
