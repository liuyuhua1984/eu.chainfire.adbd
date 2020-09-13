.class final Leu/chainfire/adbd/o;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Leu/chainfire/adbd/MainActivity;


# direct methods
.method constructor <init>(Leu/chainfire/adbd/MainActivity;)V
    .locals 0

    iput-object p1, p0, Leu/chainfire/adbd/o;->a:Leu/chainfire/adbd/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "http://www.twitter.com/ChainfireXDA"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object v1, p0, Leu/chainfire/adbd/o;->a:Leu/chainfire/adbd/MainActivity;

    invoke-virtual {v1, v0}, Leu/chainfire/adbd/MainActivity;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Leu/chainfire/adbd/o;->a:Leu/chainfire/adbd/MainActivity;

    invoke-virtual {v0}, Leu/chainfire/adbd/MainActivity;->finish()V

    return-void
.end method
