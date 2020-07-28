package ${escapeKotlinIdentifiers(packageName)}

import com.dtk.dtkapp.R
import com.dtk.dtkapp.base.MvpBaseActivity

class ${activityClass}:MvpBaseActivity<${presenterName}>(),${contractName}.View{

	override fun initPresenter(): ${presenterName} = ${presenterName}()

    override fun setTitleId(): Int = R.layout.base_title_layout

    override fun setContentId(): Int = R.layout.${activityToLayout(activityName)}

    override fun titleString(): String = ""
}
