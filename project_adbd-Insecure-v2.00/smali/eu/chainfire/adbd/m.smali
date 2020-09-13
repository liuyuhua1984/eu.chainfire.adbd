.class final Leu/chainfire/adbd/m;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field final synthetic a:Leu/chainfire/adbd/MainActivity;


# direct methods
.method constructor <init>(Leu/chainfire/adbd/MainActivity;)V
    .locals 0

    iput-object p1, p0, Leu/chainfire/adbd/m;->a:Leu/chainfire/adbd/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "market://search?q=pub:Chainfire"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object v1, p0, Leu/chainfire/adbd/m;->a:Leu/chainfire/adbd/MainActivity;

    invoke-virtual {v1, v0}, Leu/chainfire/adbd/MainActivity;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Leu/chainfire/adbd/m;->a:Leu/chainfire/adbd/MainActivity;

    invoke-virtual {v0}, Leu/chainfire/adbd/MainActivity;->finish()V

    const/4 v0, 0x0

    return v0
.end method
