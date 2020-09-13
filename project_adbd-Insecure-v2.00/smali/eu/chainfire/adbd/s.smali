.class final Leu/chainfire/adbd/s;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public a:Ljava/lang/String;

.field final synthetic b:Leu/chainfire/adbd/q;


# direct methods
.method constructor <init>(Leu/chainfire/adbd/q;)V
    .locals 1

    iput-object p1, p0, Leu/chainfire/adbd/s;->b:Leu/chainfire/adbd/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Leu/chainfire/adbd/s;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Leu/chainfire/adbd/s;->b:Leu/chainfire/adbd/q;

    invoke-static {v0}, Leu/chainfire/adbd/q;->a(Leu/chainfire/adbd/q;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Leu/chainfire/adbd/s;->b:Leu/chainfire/adbd/q;

    invoke-static {v0}, Leu/chainfire/adbd/q;->a(Leu/chainfire/adbd/q;)Landroid/app/ProgressDialog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Loading ...\n\n"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Leu/chainfire/adbd/s;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
