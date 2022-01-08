.class Lproguard/ftsafe/d/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lproguard/ftsafe/d/a;


# direct methods
.method constructor <init>(Lproguard/ftsafe/d/a;)V
    .locals 0

    iput-object p1, p0, Lproguard/ftsafe/d/c;->a:Lproguard/ftsafe/d/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lproguard/ftsafe/d/c;->a:Lproguard/ftsafe/d/a;

    invoke-static {v0}, Lproguard/ftsafe/d/a;->k(Lproguard/ftsafe/d/a;)Lproguard/ftsafe/c/d;

    move-result-object v0

    iget-object v1, p0, Lproguard/ftsafe/d/c;->a:Lproguard/ftsafe/d/a;

    invoke-static {v1}, Lproguard/ftsafe/d/a;->i(Lproguard/ftsafe/d/a;)Lproguard/ftsafe/c/a;

    move-result-object v1

    iget-object v2, p0, Lproguard/ftsafe/d/c;->a:Lproguard/ftsafe/d/a;

    invoke-static {v2}, Lproguard/ftsafe/d/a;->j(Lproguard/ftsafe/d/a;)Lproguard/ftsafe/b/a;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lproguard/ftsafe/c/d;->a(Lproguard/ftsafe/c/a;Lproguard/ftsafe/b/a;Lproguard/ftsafe/b/c;)V

    return-void
.end method
